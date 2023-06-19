import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcone extends StatelessWidget {
  String socialMediaImagePath;
  String socialMediaLink;
  SocialMediaIcone({
    required this.socialMediaImagePath,
    required this.socialMediaLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: InkWell(
        child: CircleAvatar(backgroundColor: Colors.transparent ,backgroundImage: AssetImage("assets/$socialMediaImagePath.png",),),
        onTap: () => launchUrl(Uri.parse(socialMediaLink),
        mode: LaunchMode.externalApplication)
      ),
    );
  }
}