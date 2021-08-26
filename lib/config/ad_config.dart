import 'dart:io';

class AdConfig {


  
  //-- Admob Ads --
  static const String admobAppIdAndroid = 'ca-app-pub-1402863427611729~4835395953';
  static const String admobAppIdiOS = 'ca-app-pub-1402863427611729~9723571183';

  static const String admobInterstitialAdUnitIdAndroid = 'ca-app-pub-1402863427611729/8522170158';
  static const String admobInterstitialAdUnitIdiOS = 'ca-app-pub-1402863427611729/5229598885';

  static const String admobBannerAdUnitIdAndroid = 'ca-app-pub-1402863427611729/2252275271';
  static const String admobBannerAdUnitIdiOS = 'ca-app-pub-1402863427611729/7556572845';

  //-- Fb Ads --
  static const String fbInterstitialAdUnitIdAndroid = '544514846502****************';
  static const String fbInterstitialAdUnitIdiOS = '544514846502023_702****************';

  static const String fbBannerAdUnitIdAndroid = '544514846502023_70****************';
  static const String fbBannerAdUnitIdiOS = '544514846502023_7****************';








  // -- Don't edit these --
  
  String getAdmobAppId () {
    if(Platform.isAndroid){
      return admobAppIdAndroid;
    } 
    else{
      return admobAppIdiOS;
    }
  }

  String getAdmobBannerAdUnitId (){
    if(Platform.isAndroid){
      return admobBannerAdUnitIdAndroid;
    }
    else{
      return admobBannerAdUnitIdiOS;
    }
  }

  String getAdmobInterstitialAdUnitId (){
    if(Platform.isAndroid){
      return admobInterstitialAdUnitIdAndroid;
    }
    else{
      return admobInterstitialAdUnitIdiOS;
    }
  }


  String getFbBannerAdUnitId (){
    if(Platform.isAndroid){
      return fbBannerAdUnitIdAndroid;
    }
    else{
      return fbBannerAdUnitIdiOS;
    }
  }

  String getFbInterstitialAdUnitId (){
    if(Platform.isAndroid){
      return fbInterstitialAdUnitIdAndroid;
    }
    else{
      return fbInterstitialAdUnitIdiOS;
    }
  }

  
}