import 'package:contacts/widget/social_media_grid_view.dart';
import 'package:contacts/widget/social_media_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatelessWidget {
  Map <String, String> socialMediaIcon = {
    "facebook"  : "https://www.facebook.com/",  
    "whatsapp" : "https://wa.me/+201001193435",  
    "youtube" : "https://www.youtube.com/"
  };
  MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFD9D9D9),
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  CircleAvatar(backgroundImage: AssetImage("assets/user.png"), backgroundColor: Colors.transparent,radius: 100,),
                  // Image(image: AssetImage("assets/whatsapp.png"),width: 100,),
                  SizedBox(height: 50,),
                  Text("Essam Gharib",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("+0201001193435", style: TextStyle(letterSpacing: 1),),
                        IconButton(onPressed: () => launchUrl(Uri.parse("tel:+0201001193435")), icon: Icon(Icons.phone)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  SocialMediaGridView(socialMediaIcon: socialMediaIcon)
                ],
              ),
            ),
          ),
        ),
    );
  }
}