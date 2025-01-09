import 'package:crypto_wallet/core/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryLayout extends StatelessWidget {
  final Widget child;

  const PrimaryLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello Anna",
              style: TextStyle(
                  fontSize: 24,
                  color: AppColors.pink,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(
                  fontSize: 32,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.lightGrey),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
