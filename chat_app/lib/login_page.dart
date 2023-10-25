import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Let\'s sign you in!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blueAccent,
            ),
          ),
          Text('Welcome back\nYou\'ve been missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .02)),
          Image.network(
            'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
            height: 200,
            width: 200,
          ),
        ],
      ),
    ));
  }
}

class Message extends StatelessWidget {
  String text = 'placeholder';

  Message({
    Key? key,
  }) : super(key: key);

  Message.addText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Let\'s sign int!',
          style: TextStyle(
              fontSize: 30,
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              letterSpacing: .02)),
    );
  }
}
