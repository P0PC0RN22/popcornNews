import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:news_app/blocs/sign_in_bloc.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/pages/home.dart';
import 'package:news_app/utils/next_screen.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {


  void afterIntroComplete (){
    final SignInBloc sb = Provider.of<SignInBloc>(context, listen: false);
    sb.setSignIn();
    nextScreenReplace(context, HomePage());
  }


  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        introPage(context, 'សូមស្វាគមន៍មកកាន់ពិភពអ្នកស្រឡាញ់ភាពយន្ត', 'គោលបំណងនៅក្នុងការបង្កើតកម្មវិធីមួយនេះគឺដោយសារតែពួកយើងចង់អោយអ្នកស្រឡាញ់ភាពយន្តទាំងអស់នៅកម្ពុជា អាចទទួលបានពត៌មានកាន់តែឆាប់រហ័សនិងច្បាស់ការបំផុត ។  ', Config().introImage1),
        introPage(context, 'នេះគ្រាន់តែជាជំហានដំបូងប៉ុណ្ណោះ', 'នេះគ្រាន់តែជាការចាប់ផ្តើមដំបូងប៉ុណោះសម្រាប់ពួកយើង ទៅមុខបន្តរទៀតពួកយើងនិងខិតខំរកនូវអ្វីដែលថ្មីនិងផ្តល់ភាពងាយស្រួលដល់អ្នកស្រឡាញ់ភាពយន្តទាំងអស់ងាយទទួលបានកាន់តែរហ័សនិងងាយស្រួល ។ ', Config().introImage2),
        introPage(context, 'សូមអគុណចំពោះការប្រើប្រាស់កម្មវិធីមួយនេះ', 'ពួកយើងសង្ឃឹមថាគ្រប់គ្នានិងពេញចិត្តជាមួយកម្មវិធីមួយនេះ ។ ប្រសិនបើអ្នកមានអ្វីមិនពេញចិត្តរឺចង់អោយពួកយើងបន្ថែមនៅក្នុងកម្មវិធីមួយនេះ លោកអ្នកអាចផ្ញើរ Email មកកាន់ពួកយើងបាន ពួកយើងនិងរីករាយទទួលនូវមតិយោបល់របស់អ្នកទាំងអស់គ្នា ។ ', Config().introImage3)



      ],
      onDone: () {
        afterIntroComplete();
      },
      onSkip: () {
        afterIntroComplete();
      },
      globalBackgroundColor: Colors.white,
      showSkipButton: true,
      skip: const Text('skip', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)).tr(),
      next: const Icon(Icons.navigate_next),
      done: const Text("done", style: TextStyle(fontWeight: FontWeight.w600)).tr(),

      dotsDecorator: DotsDecorator(
          size: const Size.square(7.0),
          activeSize: const Size(20.0, 5.0),
          activeColor: Theme.of(context).primaryColor,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0))),
    );
  }
}




PageViewModel introPage (context, String title, String subtitle, String image){
  return PageViewModel(

    titleWidget: Column(
      children: <Widget>[
        Text(title,
          style:  TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,

              color: Colors.black),
        ).tr(),
        SizedBox(height: 8,),
        Container(
          height: 3,
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)
          ),
        )
      ],
    ),

    body: subtitle.tr(),
    image: Center(
        child: Image(
            image: AssetImage(image)
        )
    ),

    decoration: const PageDecoration(
      pageColor: Colors.white,
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 17, fontWeight: FontWeight.w500,),
      descriptionPadding: EdgeInsets.only(left: 30, right: 30),
      imagePadding: EdgeInsets.all(30),

    ),
  );

}


