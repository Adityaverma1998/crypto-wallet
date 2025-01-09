import 'package:crypto_wallet/views/widgets/primary_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryLayout(
      child: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return Column(
      children: <Widget>[

      ],
    );

  }

}