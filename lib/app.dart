import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

const String appname = 'LDP Quote';
const String short_appname = "LDP Quote";
const String title = 'LDP Quote';
const String slogan = 'Lession of Life, Politic, Social, Love';
const String description =
    '''
The League for Democracy Party (LDP) is a Cambodian political party that was established in June 2006. Its leader is president Khem Veasna. The mission is try to put Mechanisms. In order to deduct the state power by 8 Mechanisms follow: 8 Mechanism

1. The term of office of the Prime Minister must be limited by 2 terms (5years per term) : Prevent from dictatorship that can cause to nepotism that cause damage to the society and the citizen.

2. Prime minister won't be allowed to form his/her own group of bodyguard by himself/herself : The form of his/her own group of bodyguard by himself/herself is like forming his/her own group of armed force that can use to serve his/her ambition and cause a threat to the citizen.

3. The Prime Minister should live in the residence provided by the Government : is a measure to help protect the prime minister that are safe and easy to work responsible and serve the nation.

4. Create an administration court.

5. The role and function as well as the promotion of general of military and police should be approved by the Parliament.

6. The Government Official should be neutral.

7. The Representatives of all levels (Commune/Sangkat, District/Khan and Province/City) should be directly elected and dismissed by the citizen.

8. Using of uninominal system to elect the members of Parliament
    ''';
const String apiUrl = 'http://ldpquote.com/wp-json/wp/v2/';
const String logo = 'assets/images/logo.png';
const String placeholder = 'assets/images/placeholder.png';
const String post = 'posts?_embed';
const String page = 'pages?_embed';
var bgColor = createMaterialColor(Color(0xFF00314D)); //#00314D
const Color maincolor = Color(0xFF00314D);
const Color secondcolor = Colors.blueGrey;
const bottomAds = 'assets/images/ads.gif';
const postAds = 'assets/images/ads.png';
const String contact_url = "http://ldpquote.com";
const String contact_phone = "+85510532003";
const String contact_email = "https://www.facebook.com/ldpquote/?ref=br_rs";
const String contact_youtube = 'https://www.youtube.com/channel/UCV-mRPSggWtMotLjlwOYxgw?sub_confirmation=1';
const double contact_lat = 13.3825006;
const double contact_lng = 103.8543488;
const double contact_zoom = 12;
