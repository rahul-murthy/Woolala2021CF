import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.purple[900],
                Colors.purple[800],
                Colors.purple[600]
              ]
          ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('./assets/logos/w_logo_test.png', width: 350, height: 200, fit: BoxFit.contain, semanticLabel: 'WooLaLa logo'),
              Text("Powered by: ", style: TextStyle(color: Colors.white, fontSize: 16),),
              Image.asset('assets/logos/fashionNXT_logo.png', width: 150, height: 30, fit: BoxFit.contain, semanticLabel: 'FashioNXT logo'),
              SizedBox(height: 25,),
              Text("Login With:", style: TextStyle(color: Colors.white, fontSize: 24),),
              _buildSocialButtonRow()
            ],
          ),
      ),
     ),
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0, width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black26, offset: Offset(0, 2), blurRadius: 20.0,),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButtonRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(() => print('Login with Facebook'), AssetImage('assets/logos/facebook_logo.png',),),
          _buildSocialBtn(() => print('Login with Google'), AssetImage('assets/logos/google_logo.png',),),
        ],
      ),
    );
  }




}
