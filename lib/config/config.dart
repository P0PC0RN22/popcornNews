import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Config{


  final String appName = 'CinemaigcNewsApp';
  final splashIcon = 'assets/images/cinemagic.png';
  final String supportEmail = 'popcornkhmer@gmail.com';
  final String privacyPolicyUrl = 'https://www.google.com/';
  final String ourWebsiteUrl = 'https://www.cinemagickh.net';
  final String iOSAppId = '000000';


  //social links
  static const String facebookPageUrl = 'https://www.facebook.com/cinemagickh';
  static const String movieloverUrl = 'https://www.facebook.com/Movies-Lover-612495059250657';
  static const String popcornkhUrl = 'https://www.facebook.com/PopcornKhmer';

  //app theme color
  final Color appColor = Colors.deepPurpleAccent;



  //Intro images
  final String introImage1 = 'assets/images/4382798_Mesa de trabajo 1.png';
  final String introImage2 = 'assets/images/5746197_Artboard 1.png';
  final String introImage3 = 'assets/images/5720759_Mesa de trabajo 1.png';

  //animation files
  final String doneAsset = 'assets/animation_files/done.json';


  //Language Setup
  final List<String> languages = [
    'English',
    'Khmer',
    'Thai'
  ];


  //initial categories - 4 only (Hard Coded : which are added already on your admin panel)
  final List initialCategories = [
    'Local'.tr(),
    'HollyWood'.tr(),
    'Korean'.tr(),
    'Chinese'.tr(),
    'Hong Kong'.tr(),
    'Thai'.tr(),
    'Anime'.tr(),
    'Short Film'.tr(),
    'Film Review'.tr(),
  ];
}