import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tawkto/flutter_tawk.dart';

class CustomServiceScreen extends StatelessWidget{
  const CustomServiceScreen({super.key});
  static const String _chatLink =
      'https://tawk.to/chat/67b338e01a702b1909007eb6/1ika1cb6i';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Tawk(
            directChatLink: _chatLink,
            visitor: TawkVisitor(
              name: 'UserName',
              email: 'userEmail@gmail.com',
            ),
            onLoad: () => debugPrint('chat loaded'),
            onLinkTap: (String url) => debugPrint('Tapped URL: $url'),
            placeholder: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );

  }
}
