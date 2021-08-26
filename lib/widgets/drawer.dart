import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/blocs/sign_in_bloc.dart';
import 'package:news_app/blocs/theme_bloc.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/models/custom_color.dart';
import 'package:news_app/pages/bookmarks.dart';
import 'package:news_app/services/app_service.dart';
import 'package:news_app/utils/app_name.dart';
import 'package:news_app/utils/next_screen.dart';
import 'package:news_app/widgets/language.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final sb = context.watch<SignInBloc>();
    final List titles = [
      'bookmarks',
      'language',
      'about us',
      'privacy policy',
      'contact us',
      'facebook page',
      'youtube channel',
      'twitter'
    ];

    final List icons = [
      Feather.bookmark,
      Feather.globe,
      Feather.info,
      Feather.lock,
      Feather.mail,
      Feather.facebook,
      Feather.youtube,
      Feather.twitter

    ];



    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                alignment: Alignment.center,
                //color: context.watch<ThemeBloc>().darkTheme == false ? CustomColor().drawerHeaderColorLight : CustomColor().drawerHeaderColorDark,
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppName(fontSize: 25.0),
                    Text('Version: ${sb.appVersion}', style: TextStyle(
                        fontSize: 13, color: Colors.grey[600]
                    ),)
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    isThreeLine: false,
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(Icons.email_outlined, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'contact us',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      Navigator.pop(context);
                      AppService().openEmailSupport();
                    },

                  ),SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(Icons.link_outlined, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'our website',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      Navigator.pop(context);
                      AppService().openLinkWithCustomTab(context, Config().ourWebsiteUrl);
                    },
                  ),SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading:  FaIcon(FontAwesomeIcons.globeAsia, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'Language',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      nextScreenPopup(context, LanguagePopup());



                    },

                  ),SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading:  FaIcon(FontAwesomeIcons.shieldAlt, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      Navigator.pop(context);
                      AppService().openLinkWithCustomTab(context, Config().privacyPolicyUrl);


                    },

                  ),SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: FaIcon(FontAwesomeIcons.facebook, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'Cinemagickh Page',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      Navigator.pop(context);
                      AppService().openLink(context, Config.facebookPageUrl);
                    },
                  ),SizedBox(
                    height: 15,),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: FaIcon(FontAwesomeIcons.facebook, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'PopCornKH Page',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      Navigator.pop(context);
                      AppService().openLink(context, Config.popcornkhUrl);
                    },
                  ),SizedBox(
                    height: 15,),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: FaIcon(FontAwesomeIcons.facebook, size: 30,),
                    horizontalTitleGap: 6,
                    title: Text(
                      'MovieLover Page',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                    onTap: (){
                      Navigator.pop(context);
                      AppService().openLink(context, Config.movieloverUrl);
                    },
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
