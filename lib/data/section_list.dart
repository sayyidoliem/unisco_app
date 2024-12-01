import 'package:flutter/material.dart';
import 'package:unisco_app/pages/home/news_sections/cleanliness_section.dart';
import 'package:unisco_app/pages/home/news_sections/creativity_section.dart';
import 'package:unisco_app/pages/home/news_sections/humas_section.dart';
import 'package:unisco_app/pages/home/news_sections/islamic_section.dart';
import 'package:unisco_app/pages/home/news_sections/language_section.dart';

class NewsSection {
  static const List<Widget> sections = [
    HumasNewsSection(),
    CreativityNewsSection(),
    CleanlinessNewsSection(),
    IslamicNewsSection(),
    LanguageNewsSection(),
  ];

  static const List<Widget> tabs = [
    Tab(text: "Humas", icon: Icon(Icons.groups_outlined)),
    Tab(text: "Kreatifitas", icon: Icon(Icons.workspace_premium)),
    Tab(text: "Kebersihan", icon: Icon(Icons.eco_outlined)),
    Tab(text: "Keislaman", icon: Icon(Icons.mosque_outlined)),
    Tab(text: "Kebahasaan", icon: Icon(Icons.translate_outlined)),
  ];
}
