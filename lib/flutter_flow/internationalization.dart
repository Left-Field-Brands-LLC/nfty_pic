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
    'm1lvz66b': {
      'en': 'Sign In',
      'fr': '',
    },
    'udckyewa': {
      'en': 'Sign Up',
      'fr': '',
    },
    '0q4l2uj1': {
      'en': 'Sign in to share more photos',
      'fr': '',
    },
    'gpfk24pf': {
      'en': 'Email',
      'fr': '',
    },
    'peewk13o': {
      'en': 'Password',
      'fr': '',
    },
    '6ca18yw1': {
      'en': 'Login',
      'fr': '',
    },
    'vairuprg': {
      'en': 'Continue as Guest',
      'fr': '',
    },
  },
  // register
  {
    '26a3g2tu': {
      'en': 'Sign In',
      'fr': '',
    },
    'vukd35yc': {
      'en': 'Sign Up',
      'fr': '',
    },
    '810ueda4': {
      'en': 'Get started by creating an account below.',
      'fr': '',
    },
    'i45t3dhw': {
      'en': 'Email',
      'fr': '',
    },
    's2hvwgvr': {
      'en': 'Password',
      'fr': '',
    },
    '7we2h5nv': {
      'en': 'Confirm Passward',
      'fr': '',
    },
    '98x3bhop': {
      'en': 'Get Started',
      'fr': '',
    },
    'dvxg2h1n': {
      'en': 'Continue as Guest',
      'fr': '',
    },
  },
  // home
  {
    '31jphqnk': {
      'en': 'NFTy',
      'fr': '',
    },
    'wttsuovx': {
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
  // add_image
  {
    'cpnh24yx': {
      'en': 'Add Image',
      'fr': '',
    },
    'dqchwjl7': {
      'en': 'Enter post details here...',
      'fr': '',
    },
    'zri0jsmt': {
      'en': 'Art',
      'fr': '',
    },
    'uc7w4dzs': {
      'en': 'Portrait',
      'fr': '',
    },
    'zsgrqb3j': {
      'en': 'Landscape',
      'fr': '',
    },
    '5a9unxg1': {
      'en': 'Health',
      'fr': '',
    },
    '24nbnkji': {
      'en': 'Fitness',
      'fr': '',
    },
    'z5eid5sv': {
      'en': 'Select a Tag',
      'fr': '',
    },
    '9wo34cb6': {
      'en': 'Tag Location',
      'fr': '',
    },
    '0o56ybrt': {
      'en': 'Add Image',
      'fr': '',
    },
  },
  // image_details
  {
    'xb91bsxc': {
      'en': 'Title',
      'fr': '',
    },
    '4sdrlfkq': {
      'en': 'Owner Name',
      'fr': '',
    },
    '63zrb3wn': {
      'en':
          'Sporty style from the archives inspires this iconic track top. A stand-up collar and the signature sheen of tricot give it a retro vibe. Made for relaxing between sessions, the full-zip jacket has a recycled polyester build.',
      'fr': '',
    },
    'jm710wn9': {
      'en': 'Mint This Image',
      'fr': '',
    },
  },
  // profile
  {
    'pqqv1wlq': {
      'en': '[User Name Here]',
      'fr': '',
    },
    'xmcu37pq': {
      'en': 'User.name@domainname.com',
      'fr': '',
    },
    'o8x7t5yc': {
      'en': 'Account Settings',
      'fr': '',
    },
    'p5gczf51': {
      'en': 'Order History',
      'fr': '',
    },
    '72l02lmm': {
      'en': 'Settings',
      'fr': '',
    },
    '9kqgwunf': {
      'en': 'Notifications',
      'fr': '',
    },
    'aw25gdz4': {
      'en': 'Change Password',
      'fr': '',
    },
    'tnvl2w1b': {
      'en': 'Logout',
      'fr': '',
    },
    '4x1jz1za': {
      'en': 'My Profile',
      'fr': '',
    },
  },
  // gallery
  {
    'wafhrray': {
      'en': 'My Images',
      'fr': '',
    },
    '377jlqj5': {
      'en': 'Category Name',
      'fr': '',
    },
    '3slie2k2': {
      'en': 'Category Name',
      'fr': '',
    },
    'riu68oo0': {
      'en': 'Category Name',
      'fr': '',
    },
    '31rwuf4k': {
      'en': 'Category Name',
      'fr': '',
    },
    'rwqnip23': {
      'en': 'Category Name',
      'fr': '',
    },
    'si1jfplb': {
      'en': 'Category Name',
      'fr': '',
    },
    'r68lm9kp': {
      'en': 'Category Name',
      'fr': '',
    },
    'c50ikrnp': {
      'en': 'Category Name',
      'fr': '',
    },
    'hz2mpn6t': {
      'en': 'Category Name',
      'fr': '',
    },
    'v1m7jtv5': {
      'en': 'Category Name',
      'fr': '',
    },
    '1na1y5p9': {
      'en': 'Category Name',
      'fr': '',
    },
    'rav712bv': {
      'en': 'Category Name',
      'fr': '',
    },
    '3jfikike': {
      'en': 'Home',
      'fr': '',
    },
  },
  // view_all
  {
    'dgfaviqw': {
      'en': 'Fitness',
      'fr': '',
    },
    'fvp0sr4a': {
      'en': 'Title Will Go Here',
      'fr': '',
    },
    '78ptr3yv': {
      'en': 'Name',
      'fr': '',
    },
    'gfnne6mq': {
      'en': 'Fitness',
      'fr': '',
    },
    'i14o5fou': {
      'en': 'Title Will Go Here',
      'fr': '',
    },
    'ahrhx0uy': {
      'en': 'Name',
      'fr': '',
    },
    'qfj4enl3': {
      'en': 'Fitness',
      'fr': '',
    },
    'q3inqq28': {
      'en': 'Title Will Go Here',
      'fr': '',
    },
    'ktph72qg': {
      'en': 'Name',
      'fr': '',
    },
  },
  // select_wallet
  {
    'vvvme32t': {
      'en': 'Select Wallet to Mint With',
      'fr': '',
    },
    '0vbn1js5': {
      'en': 'Subtitle for the needs of description',
      'fr': '',
    },
    'y77dn71t': {
      'en': 'Wallet Name',
      'fr': '',
    },
    'ag3dxfw6': {
      'en': 'Wallet Name',
      'fr': '',
    },
    '80fywaiw': {
      'en': 'Wallet Name',
      'fr': '',
    },
    'vg4txoec': {
      'en': 'Wallet Name',
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
