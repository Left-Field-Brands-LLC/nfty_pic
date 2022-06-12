import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'fr', 'es', 'ja', 'hi'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String frText = '',
    String esText = '',
    String jaText = '',
    String hiText = '',
  }) =>
      [enText, frText, esText, jaText, hiText][languageIndex] ?? '';
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
      'es': 'Registrarse',
      'fr': 'S&#39;identifier',
      'hi': 'साइन इन करें',
      'ja': 'ログイン',
    },
    'udckyewa': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S&#39;inscrire',
      'hi': 'साइन अप करें',
      'ja': 'サインアップ',
    },
    '0q4l2uj1': {
      'en': 'Sign in to share more photos',
      'es': 'Inicia sesión para compartir más fotos',
      'fr': 'Connectez-vous pour partager plus de photos',
      'hi': 'अधिक फ़ोटो साझा करने के लिए साइन इन करें',
      'ja': 'サインインして他の写真を共有する',
    },
    'gpfk24pf': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
      'hi': 'ईमेल',
      'ja': 'Eメール',
    },
    'peewk13o': {
      'en': 'Password',
      'es': 'Clave',
      'fr': 'Mot de passe',
      'hi': 'पासवर्ड',
      'ja': 'パスワード',
    },
    '6ca18yw1': {
      'en': 'Login',
      'es': 'Acceso',
      'fr': 'Connexion',
      'hi': 'लॉग इन करें',
      'ja': 'ログイン',
    },
    'vairuprg': {
      'en': 'Continue as Guest',
      'es': 'Continua como invitado',
      'fr': 'Continuer en tant qu&#39;invité',
      'hi': 'अतिथि के रूप में जारी रखें',
      'ja': 'ゲストとして続行',
    },
  },
  // register
  {
    '26a3g2tu': {
      'en': 'Sign In',
      'es': 'Registrarse',
      'fr': 'S&#39;identifier',
      'hi': 'साइन इन करें',
      'ja': 'ログイン',
    },
    'vukd35yc': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S&#39;inscrire',
      'hi': 'साइन अप करें',
      'ja': 'サインアップ',
    },
    '810ueda4': {
      'en': 'Get started by creating an account below.',
      'es': 'Comience creando una cuenta a continuación.',
      'fr': 'Commencez par créer un compte ci-dessous.',
      'hi': 'नीचे एक खाता बनाकर आरंभ करें।',
      'ja': '以下のアカウントを作成して始めましょう。',
    },
    'i45t3dhw': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
      'hi': 'ईमेल',
      'ja': 'Eメール',
    },
    's2hvwgvr': {
      'en': 'Password',
      'es': 'Clave',
      'fr': 'Mot de passe',
      'hi': 'पासवर्ड',
      'ja': 'パスワード',
    },
    '7we2h5nv': {
      'en': 'Confirm Passward',
      'es': 'Confirmar contraseña',
      'fr': 'Confirmer le mot de passe',
      'hi': 'पासवार्ड की पुष्टि करें',
      'ja': 'パスワードを確認する',
    },
    '98x3bhop': {
      'en': 'Get Started',
      'es': 'Empezar',
      'fr': 'Commencer',
      'hi': 'शुरू हो जाओ',
      'ja': 'はじめに',
    },
    'dvxg2h1n': {
      'en': 'Continue as Guest',
      'es': 'Continua como invitado',
      'fr': 'Continuer en tant qu&#39;invité',
      'hi': 'अतिथि के रूप में जारी रखें',
      'ja': 'ゲストとして続行',
    },
  },
  // home
  {
    '7ftte96a': {
      'en': 'Quick Filters',
      'es': 'Filtros rápidos',
      'fr': 'Filtres rapides',
      'hi': 'त्वरित फ़िल्टर',
      'ja': 'クイックフィルター',
    },
    'j465ims6': {
      'en': 'All Images',
      'es': 'Todas las imágenes',
      'fr': 'Toutes les photos',
      'hi': 'सभी छवियां',
      'ja': 'すべての画像',
    },
    'tscs9p3j': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
  },
  // add_image
  {
    'cpnh24yx': {
      'en': 'Add Image',
      'es': 'Añadir imagen',
      'fr': 'Ajouter une image',
      'hi': 'छवि जोड़ें',
      'ja': '画像を追加',
    },
    'becrjldq': {
      'en': 'Title',
      'es': 'Título',
      'fr': 'Titre',
      'hi': 'शीर्षक',
      'ja': '題名',
    },
    'vhsc00r4': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'dqchwjl7': {
      'en': 'Enter post details here...',
      'es': 'Ingrese los detalles de la publicación aquí...',
      'fr': 'Entrez les détails du poste ici...',
      'hi': 'यहां पोस्ट विवरण दर्ज करें...',
      'ja': 'ここに投稿の詳細を入力してください...',
    },
    'zri0jsmt': {
      'en': 'Art',
      'es': 'Arte',
      'fr': 'Art',
      'hi': 'कला',
      'ja': '美術',
    },
    'uc7w4dzs': {
      'en': 'Portrait',
      'es': 'Retrato',
      'fr': 'Portrait',
      'hi': 'चित्र',
      'ja': 'ポートレート',
    },
    'zsgrqb3j': {
      'en': 'Landscape',
      'es': 'Paisaje',
      'fr': 'Paysage',
      'hi': 'परिदृश्य',
      'ja': '風景',
    },
    '5a9unxg1': {
      'en': 'Health',
      'es': 'Salud',
      'fr': 'Santé',
      'hi': 'स्वास्थ्य',
      'ja': '健康',
    },
    '24nbnkji': {
      'en': 'Fitness',
      'es': 'Aptitud física',
      'fr': 'Aptitude',
      'hi': 'स्वास्थ्य',
      'ja': 'フィットネス',
    },
    'z5eid5sv': {
      'en': 'Select a Tag',
      'es': 'Seleccione una etiqueta',
      'fr': 'Sélectionnez une balise',
      'hi': 'एक टैग चुनें',
      'ja': 'タグを選択してください',
    },
    '0o56ybrt': {
      'en': 'Add Image',
      'es': 'Añadir imagen',
      'fr': 'Ajouter une image',
      'hi': 'छवि जोड़ें',
      'ja': '画像を追加',
    },
  },
  // image_details
  {
    'xb91bsxc': {
      'en': 'Title',
      'es': 'Título',
      'fr': 'Titre',
      'hi': 'शीर्षक',
      'ja': '題名',
    },
    'jm710wn9': {
      'en': 'Mint This Image',
      'es': 'Menta esta imagen',
      'fr': 'Mentir cette image',
      'hi': 'मिंट दिस इमेज',
      'ja': 'この画像をミント',
    },
  },
  // profile
  {
    'zo3z0hzr': {
      'en': 'Account Settings',
      'es': 'Configuraciones de la cuenta',
      'fr': 'Paramètres du compte',
      'hi': 'अकाउंट सेटिंग',
      'ja': 'アカウント設定',
    },
    'iv8odjr8': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'fr': 'Editer le profil',
      'hi': 'प्रोफ़ाइल संपादित करें',
      'ja': 'プロファイル編集',
    },
    'rkp94nvg': {
      'en': 'Order History',
      'es': 'Historial de pedidos',
      'fr': 'Historique des commandes',
      'hi': 'आदेश इतिहास',
      'ja': '注文履歴',
    },
    '5ahstnmb': {
      'en': 'Settings',
      'es': 'Ajustes',
      'fr': 'Réglages',
      'hi': 'समायोजन',
      'ja': '設定',
    },
    '08jiwnwu': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'fr': 'Avis',
      'hi': 'सूचनाएं',
      'ja': '通知',
    },
    'uv6a3b0u': {
      'en': 'Change Password',
      'es': 'Cambia la contraseña',
      'fr': 'Changer le mot de passe',
      'hi': 'पासवर्ड बदलें',
      'ja': 'パスワードを変更する',
    },
    'tnvl2w1b': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
      'hi': 'लॉग आउट',
      'ja': 'ログアウト',
    },
    'rxsskr1h': {
      'en': 'My Profile',
      'es': 'Mi perfil',
      'fr': 'Mon profil',
      'hi': 'मेरी प्रोफाइल',
      'ja': '私のプロフィール',
    },
  },
  // gallery
  {
    'h4ytfpny': {
      'en': 'My Images',
      'es': 'Mis Imágenes',
      'fr': 'Mes photos',
      'hi': 'मेरी छवियां',
      'ja': '私の画像',
    },
    'yw0opxuw': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    '0f249y6h': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    'sm9frw0y': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    'ah6hzirx': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    'bagwo8sg': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    'ajxoawky': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    'gi1xbnsl': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    '5locvm1a': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    '6d9bs74r': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    '0evj07aa': {
      'en': 'Category Name',
      'es': 'nombre de la categoría',
      'fr': 'Nom de catégorie',
      'hi': 'श्रेणी नाम',
      'ja': '種別名',
    },
    'ls0esmbo': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
  },
  // filtered_list
  {
    '7p88eu90': {
      'en': 'Air Jordan XXXVI',
      'es': 'Air Jordan XXVI',
      'fr': 'Air Jordan XXXVI',
      'hi': 'एयर जॉर्डन XXXVI',
      'ja': 'エアジョーダンXXXVI',
    },
    'n9mz1ttw': {
      'en': '\$185.00',
      'es': '\$185.00',
      'fr': '185,00 \$',
      'hi': '\$185.00',
      'ja': '\$ 185.00',
    },
    'yyxzmxjh': {
      'en': 'Produced by Nike',
      'es': 'Producido por Niké',
      'fr': 'Produit par Nike',
      'hi': 'Nike . की बनाई फ़िल्में-टीवी शो',
      'ja': 'ナイキプロデュース',
    },
    'chvyb8j6': {
      'en': 'Lebron 19',
      'es': 'Lebrón 19',
      'fr': 'Lebron 19',
      'hi': 'लेब्रोन 19',
      'ja': 'レブロン19',
    },
    '7euz6n4e': {
      'en': '\$200.00',
      'es': '\$200.00',
      'fr': '200,00 \$',
      'hi': '\$200.00',
      'ja': '\$ 200.00',
    },
    'nepvnxci': {
      'en': 'Produced by Nike',
      'es': 'Producido por Niké',
      'fr': 'Produit par Nike',
      'hi': 'Nike . की बनाई फ़िल्में-टीवी शो',
      'ja': 'ナイキプロデュース',
    },
    'nlhp4lvh': {
      'en': 'Products',
      'es': 'productos',
      'fr': 'Des produits',
      'hi': 'उत्पादों',
      'ja': '製品',
    },
  },
  // create_profile
  {
    'zagop9us': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'fr': 'Changer la photo',
      'hi': 'तस्वीर बदलिये',
      'ja': '写真を変更する',
    },
    'lxyesg45': {
      'en': 'Your Name',
      'es': 'Su nombre',
      'fr': 'votre nom',
      'hi': 'तुम्हारा  नाम',
      'ja': 'あなたの名前',
    },
    'e0nyhw05': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'fr': 'Adresse e-mail',
      'hi': 'ईमेल पता',
      'ja': '電子メールアドレス',
    },
    'qo1a3i8y': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'fr': 'Sauvegarder les modifications',
      'hi': 'परिवर्तनों को सुरक्षित करें',
      'ja': '変更内容を保存',
    },
    'd3nki2e5': {
      'en': 'Create Profile',
      'es': 'Crear perfil',
      'fr': 'Créer un profil',
      'hi': 'प्रोफ़ाइल बनाने',
      'ja': 'プロフィール作成',
    },
  },
  // view_all
  {
    'gfnne6mq': {
      'en': 'Fitness',
      'es': 'Aptitud física',
      'fr': 'Aptitude',
      'hi': 'स्वास्थ्य',
      'ja': 'フィットネス',
    },
    'i14o5fou': {
      'en': 'Title Will Go Here',
      'es': 'El título irá aquí',
      'fr': 'Le titre ira ici',
      'hi': 'शीर्षक यहाँ जाएगा',
      'ja': 'タイトルはここにあります',
    },
    'ahrhx0uy': {
      'en': 'Name',
      'es': 'Nombre',
      'fr': 'Nom',
      'hi': 'नाम',
      'ja': '名前',
    },
    'qfj4enl3': {
      'en': 'Fitness',
      'es': 'Aptitud física',
      'fr': 'Aptitude',
      'hi': 'स्वास्थ्य',
      'ja': 'フィットネス',
    },
    'q3inqq28': {
      'en': 'Title Will Go Here',
      'es': 'El título irá aquí',
      'fr': 'Le titre ira ici',
      'hi': 'शीर्षक यहाँ जाएगा',
      'ja': 'タイトルはここにあります',
    },
    'ktph72qg': {
      'en': 'Name',
      'es': 'Nombre',
      'fr': 'Nom',
      'hi': 'नाम',
      'ja': '名前',
    },
  },
  // select_wallet
  {
    'vvvme32t': {
      'en': 'Select Wallet to Mint With',
      'es': 'Seleccione Monedero para acuñar con',
      'fr': 'Sélectionnez le portefeuille avec lequel frapper',
      'hi': 'टकसाल के साथ वॉलेट का चयन करें',
      'ja': 'ミントするウォレットを選択',
    },
    '0vbn1js5': {
      'en': 'Subtitle for the needs of description',
      'es': 'Subtítulo para las necesidades de descripción.',
      'fr': 'Sous-titre pour les besoins de la description',
      'hi': 'विवरण की आवश्यकता के लिए उपशीर्षक',
      'ja': '説明の必要性のための字幕',
    },
    'y77dn71t': {
      'en': 'Wallet Name',
      'es': 'Nombre de la billetera',
      'fr': 'Nom du portefeuille',
      'hi': 'वॉलेट का नाम',
      'ja': 'ウォレット名',
    },
    'ag3dxfw6': {
      'en': 'Wallet Name',
      'es': 'Nombre de la billetera',
      'fr': 'Nom du portefeuille',
      'hi': 'वॉलेट का नाम',
      'ja': 'ウォレット名',
    },
    '80fywaiw': {
      'en': 'Wallet Name',
      'es': 'Nombre de la billetera',
      'fr': 'Nom du portefeuille',
      'hi': 'वॉलेट का नाम',
      'ja': 'ウォレット名',
    },
    'vg4txoec': {
      'en': 'Wallet Name',
      'es': 'Nombre de la billetera',
      'fr': 'Nom du portefeuille',
      'hi': 'वॉलेट का नाम',
      'ja': 'ウォレット名',
    },
  },
  // side_nav
  {
    'gij00pdz': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ja': '家',
    },
    'unqnq43g': {
      'en': 'My Images',
      'es': 'Mis Imágenes',
      'fr': 'Mes photos',
      'hi': 'मेरी छवियां',
      'ja': '私の画像',
    },
    'b1ga56xm': {
      'en': 'Wallet',
      'es': 'Cartera',
      'fr': 'Porte monnaie',
      'hi': 'बटुआ',
      'ja': '財布',
    },
    'onnv0g6e': {
      'en': 'Profile',
      'es': 'Perfil',
      'fr': 'Profil',
      'hi': 'प्रोफ़ाइल',
      'ja': 'プロフィール',
    },
  },
  // Miscellaneous
  {
    'tbp2x0cs': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    '9gqod0s3': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'ak939j8r': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'ouq1epka': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'etrlxh5j': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'wmse70v8': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'joxdko4k': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    '3zelzkh3': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'm0je7m28': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'th2t3fkv': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'fn7vrpot': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'lsfrxubu': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'v1mbqlmp': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'o7217nr3': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    '5gfyfwn3': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'fohrnqzh': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    '6pznnr4d': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'm1mn81ml': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'awlqjzpi': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    'xervdfaz': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    '1hszujkv': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
    '441imbj7': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ja': '',
    },
  },
].reduce((a, b) => a..addAll(b));
