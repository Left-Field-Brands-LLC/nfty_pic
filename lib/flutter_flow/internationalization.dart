import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'fr'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';
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
  // login
  {
    '4xdbcxtj': {
      'en': 'Sign In',
      'fr': '',
    },
    'pcsl38i5': {
      'en': 'Sign Up',
      'fr': '',
    },
    'oylodb6m': {
      'en': 'Sign in to share more photos',
      'fr': '',
    },
    'g8srlca9': {
      'en': 'Email',
      'fr': '',
    },
    'kxxfcgt8': {
      'en': 'Password',
      'fr': '',
    },
    'fv07wyd1': {
      'en': 'Login',
      'fr': '',
    },
    'djevz245': {
      'en': 'Continue as Guest',
      'fr': '',
    },
  },
  // home
  {
    'chkzmcqr': {
      'en': 'NFTy',
      'fr': '',
    },
    'b0mybxah': {
      'en': 'Pic',
      'fr': '',
    },
    '7ftte96a': {
      'en': 'Quick Filters',
      'fr': '',
    },
    'j465ims6': {
      'en': 'All Images',
      'fr': '',
    },
    'tscs9p3j': {
      'en': 'Home',
      'fr': '',
    },
  },
  // register
  {
    '9nh5nr4e': {
      'en': 'Sign In',
      'fr': '',
    },
    'br10y0uh': {
      'en': 'Sign Up',
      'fr': '',
    },
    'w4ddou9j': {
      'en': 'Get started by creating an account below.',
      'fr': '',
    },
    'ss0rw2ej': {
      'en': 'Email',
      'fr': '',
    },
    'ofc8t1ud': {
      'en': 'Password',
      'fr': '',
    },
    '57w3rkvl': {
      'en': 'Confirm Passward',
      'fr': '',
    },
    'dq3npqkd': {
      'en': 'Get Started',
      'fr': '',
    },
    '9x7do0r1': {
      'en': 'Continue as Guest',
      'fr': '',
    },
  },
  // view_all
  {
    'qam8um8d': {
      'en': 'Fitness',
      'fr': '',
    },
    'f0c9l2jm': {
      'en': 'The Running Ragamuffins',
      'fr': '',
    },
    '7g7wolq9': {
      'en': 'Name',
      'fr': '',
    },
    'kmzyheuf': {
      'en': 'Health',
      'fr': '',
    },
    'a89tve07': {
      'en': 'Dads for Gas-free Groceries',
      'fr': '',
    },
    'tanwb636': {
      'en': 'Name',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'ak939j8r': {
      'en': '',
      'fr': '',
    },
    'ouq1epka': {
      'en': '',
      'fr': '',
    },
    'etrlxh5j': {
      'en': '',
      'fr': '',
    },
    'wmse70v8': {
      'en': '',
      'fr': '',
    },
    'joxdko4k': {
      'en': '',
      'fr': '',
    },
    '3zelzkh3': {
      'en': '',
      'fr': '',
    },
    'm0je7m28': {
      'en': '',
      'fr': '',
    },
    'th2t3fkv': {
      'en': '',
      'fr': '',
    },
    'fn7vrpot': {
      'en': '',
      'fr': '',
    },
    'lsfrxubu': {
      'en': '',
      'fr': '',
    },
    'v1mbqlmp': {
      'en': '',
      'fr': '',
    },
    'o7217nr3': {
      'en': '',
      'fr': '',
    },
    '5gfyfwn3': {
      'en': '',
      'fr': '',
    },
    'fohrnqzh': {
      'en': '',
      'fr': '',
    },
    '6pznnr4d': {
      'en': '',
      'fr': '',
    },
    'm1mn81ml': {
      'en': '',
      'fr': '',
    },
    'awlqjzpi': {
      'en': '',
      'fr': '',
    },
    'xervdfaz': {
      'en': '',
      'fr': '',
    },
    '1hszujkv': {
      'en': '',
      'fr': '',
    },
    '441imbj7': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
