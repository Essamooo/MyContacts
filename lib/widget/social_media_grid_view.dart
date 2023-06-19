import 'package:flutter/material.dart';

import 'social_media_icon.dart';

class SocialMediaGridView extends StatelessWidget {
  const SocialMediaGridView({
    super.key,
    required this.socialMediaIcon,
  });

  final Map<String, String> socialMediaIcon;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMediaIcon.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => SocialMediaIcone(socialMediaImagePath: socialMediaIcon.keys.toList()[index], socialMediaLink: socialMediaIcon.values.toList()[index]),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}