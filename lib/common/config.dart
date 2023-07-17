import 'dart:ui';

const env = 'DEV';

// 开发环境
const apiHost = 'http://127.0.0.1:1011';

/// 语言配置
const languageConfig = [
  {
    "language": "简体中文",
    "locale": Locale('zh', 'CN'),
  },
  {
    "language": "繁體中文（台灣）",
    "locale": Locale('zh', 'TW'),
  },
  {
    "language": "繁體中文（香港）",
    "locale": Locale('zh', 'HK'),
  },
  {
    "language": "English",
    "locale": Locale('en'),
  }
];
