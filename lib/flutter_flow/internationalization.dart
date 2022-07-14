import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['hr', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String hrText = '',
    String enText = '',
  }) =>
      [hrText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'qd0a8uly': {
      'hr': 'Home',
      'en': 'Home',
    },
    'ijlfaeq3': {
      'hr': 'Taxi Zagreb',
      'en': 'Taxi Zagreb',
    },
    'uhfnkzya': {
      'hr': '+385 91 545 089',
      'en': '+385 91 545 089',
    },
    '85wcn40t': {
      'hr': 'Transferi Hrvatska',
      'en': 'Transfers Croatia',
    },
    'jijer8vh': {
      'hr': 'Zadovoljstvo',
      'en': 'Satisfaction',
    },
    'pdainuws': {
      'hr': '99%',
      'en': '99%',
    },
    'tn1nklyz': {
      'hr': 'Cijene',
      'en': 'Prices',
    },
    'xp3tulba': {
      'hr': 'od 5 kn/km',
      'en': 'from HRK 5/km',
    },
    'ifqysorv': {
      'hr': 'Vrijeme',
      'en': 'Time',
    },
    '5wlf1pau': {
      'hr': '24/7',
      'en': '24/7',
    },
    '6xmdvrfa': {
      'hr': 'Taxi Hrvatska',
      'en': 'Taxi Croatia',
    },
    'ghzidb1d': {
      'hr': 'Sigurni i uvijek na vrijeme!',
      'en': 'Safe and always on time!',
    },
    'two7hfjq': {
      'hr': 'Transferi',
      'en': 'Transfers',
    },
    '05yb7zt2': {
      'hr': 'Gradski i Međugradski prijevoz putnika po potrebi.',
      'en':
          'City and intercity transportation of passengers according to agreement.',
    },
    'opy2zpy5': {
      'hr': '24/7',
      'en': '24/7',
    },
    'qfdmjp2x': {
      'hr': 'Dogovor s klijentima koji trebaju 24/7 usluge',
      'en': 'Agreement with clients who need 24/7 services',
    },
    'u0k19q3j': {
      'hr': 'Home',
      'en': 'Home',
    },
    '46rzsij4': {
      'hr': 'Destinacije',
      'en': 'Destinations',
    },
    '5g1t6fhm': {
      'hr': 'Vozila',
      'en': 'Vehicles',
    },
    'udg3778m': {
      'hr': 'Kontakt',
      'en': 'Contact',
    },
    'ak9g0j8e': {
      'hr': 'Home',
      'en': 'Home',
    },
  },
  // Destinacije
  {
    'osxo5zq6': {
      'hr': 'Par destinacija do kojih vozimo',
      'en': 'A couple of destinations we drive to',
    },
    'buyy22pc': {
      'hr': 'Hrvatska',
      'en': 'Croatia',
    },
    'eoymk7sk': {
      'hr': 'Cijena po dogovoru',
      'en': 'Price per agreement',
    },
    'm7q5tlgx': {
      'hr': 'Posjetite najljepše destinacije u Hrvatskoj i okolici.',
      'en':
          'Visit the most beautiful destinations in Croatia and the surrounding area.',
    },
    '8uwott1r': {
      'hr': 'Glazbeni festivali',
      'en': 'Music festivals',
    },
    'mm0k6e6w': {
      'hr': 'Cijena po dogovoru',
      'en': 'Price per agreement',
    },
    'dsa1nsxy': {
      'hr':
          'INmusic,  Ultra Europe, Hideout, Summer Salsa, Seasplash, Dimensions, Outlook samo neki od festivala na koje i s kojih vas vozimo.',
      'en':
          'INmusic, Ultra Europe, Hideout, Summer Salsa, Seasplash, Dimensions, Outlook are just some of the festivals we take you to and from.',
    },
    'yplqixze': {
      'hr': 'Plitvice',
      'en': 'Plitvice',
    },
    'ufavs9w2': {
      'hr': '1200kn',
      'en': 'HRK 1200',
    },
    'x2hv3u2p': {
      'hr': 'Najpoznatiji i najljepši nacionalni park u Hrvatskoj.',
      'en': 'The most famous and most beautiful national park in Croatia.',
    },
    'psnb2kdb': {
      'hr': 'Split',
      'en': 'Split',
    },
    'am98izwu': {
      'hr': '2200kn',
      'en': 'HRK 2200',
    },
    'dzu1quf2': {
      'hr': 'Najveći dalmatinski grad poznat po Dioklecijanovoj palači.',
      'en': 'The largest Dalmatian city known for Diocletians Palace.',
    },
    'dsx68r80': {
      'hr': 'Zagreb aerodrom',
      'en': 'Zagreb airport',
    },
    'nr2xwtsh': {
      'hr': '150kn',
      'en': 'HRK 150',
    },
    '8y3fypfl': {
      'hr':
          'Vozimo vas na aerodrome i s njih. CIjena je minimalna za put iz Zagreba  na aerodrom ili aerodroma u Zagreb.',
      'en':
          'We drive you to and from airports. The price is minimal for the trip from Zagreb to the airport or from the airport to Zagreb.',
    },
    'z27w1fwx': {
      'hr': 'Dubrovnik',
      'en': 'Dubrovnik',
    },
    'c4lvtpv5': {
      'hr': '3300kn',
      'en': 'HRK 3300',
    },
    '2tsfkod4': {
      'hr':
          'Cijena je za prijevoz iz Zagreba. Dubrovnik  grad muzej na otvorenom. Srednovjekovne zidine uz toplo i čisto more.',
      'en':
          'The price is for transportation from Zagreb. Dubrovnik city called museum in open. Medieval walls next to the warm and clear sea.',
    },
    '84h6dotj': {
      'hr': 'Destinacije',
      'en': 'Destinations',
    },
    'gkzdffnr': {
      'hr': 'Home',
      'en': 'Home',
    },
    'zm5u5gef': {
      'hr': 'Destinacije',
      'en': 'Destinations',
    },
    '3wvmun5h': {
      'hr': 'Vozila',
      'en': 'Vehicles',
    },
    '77fw69ou': {
      'hr': 'Kontakt',
      'en': 'Contact',
    },
    'jz8sfl9m': {
      'hr': 'Home',
      'en': 'Home',
    },
  },
  // Vozila
  {
    'q67ix922': {
      'hr': 'Vozila',
      'en': 'Cars',
    },
    '3pn3aev8': {
      'hr': 'Taxi',
      'en': 'Taxi',
    },
    'hd7rasxy': {
      'hr': 'km 5 kn',
      'en': 'km 5 kn',
    },
    'zt402l6s': {
      'hr': 'start 20 kn / po min 1,2 kn / min cijena 30 kn',
      'en': 'start 20 kn / by min 1,2 kn / min price 30 kn',
    },
    '72hvwafr': {
      'hr': 'Limuzina',
      'en': 'Limo',
    },
    'uguc0py3': {
      'hr': 'km 7.5 kn',
      'en': 'km 7.5 kn',
    },
    '3vkwvgja': {
      'hr': 'start 20 kn / po min 1,2 kn / min cijena 30 kn',
      'en': 'start 20 kn / by min 1,2 kn / min price 30 kn',
    },
    'ocjnl4bu': {
      'hr': 'Kombi',
      'en': 'Combi',
    },
    'i418h82y': {
      'hr': 'km 11 kn',
      'en': 'km 11 kn',
    },
    'hgcmyci5': {
      'hr': 'start 20 kn / po min 1,5 kn / min cijena 30 kn',
      'en': 'start 20 kn / by min 1,5 kn / min price 30 kn',
    },
    '61fnld2f': {
      'hr': 'Home',
      'en': 'Home',
    },
    'ul59qg8q': {
      'hr': 'Destinacije',
      'en': 'Destinations',
    },
    'oq55s0kq': {
      'hr': 'Vozila',
      'en': 'Vehicles',
    },
    '44scp72l': {
      'hr': 'Kontakt',
      'en': 'Contact',
    },
    's406z3mj': {
      'hr': 'Home',
      'en': 'Home',
    },
  },
  // Kontakt
  {
    'bamq4wx9': {
      'hr': 'Kontakt',
      'en': 'Contact',
    },
    'ff1c82re': {
      'hr': '+385 91 545 0891',
      'en': '+385 91 545 0891',
    },
    'gg545lw3': {
      'hr': 'Transferi.eu',
      'en': 'Transferi.eu',
    },
    'fdg707gb': {
      'hr': 'Bel Canto d.o.o.',
      'en': 'Bel Canto doo',
    },
    'fbqil2fg': {
      'hr': 'Ivšićev prilaz 9 \n10 000 Zagreb',
      'en': 'Ivsicev prilaz 9 \n10 000 Zagreb',
    },
    'aist9cbd': {
      'hr': 'Home',
      'en': 'Home',
    },
    'duhe9wcg': {
      'hr': 'Destinacije',
      'en': 'Destinations',
    },
    '149nwj94': {
      'hr': 'Vozila',
      'en': 'Vehicles',
    },
    '2ktzo0tx': {
      'hr': 'Kontakt',
      'en': 'Contact',
    },
  },
].reduce((a, b) => a..addAll(b));
