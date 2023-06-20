import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String socialMediaLink;
  StartSocialMedia({super.key, required this.socialMediaLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(backgroundColor: Colors.black),
      body: Center(
        child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
        onPressed: () => launchUrl(Uri.parse(socialMediaLink),mode: LaunchMode.externalApplication) , child: Text("Start Social Medial")),
      ),
    );
  }
}