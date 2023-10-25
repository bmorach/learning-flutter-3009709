import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void loginUser() {
    print('Login successful');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Let\'s sign you in!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blueAccent,
                  letterSpacing: 0.5),
            ),
            Text('Welcome back\nYou\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2)),
            Image.network(
              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
              //height: 200,
              width: 200,
            ),
            ElevatedButton(
                onPressed: loginUser,
                child: Text(
                  'Click me!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
            InkWell(
              splashColor: Colors.red,
              onDoubleTap: () {
                print('Double tab');
              },
              onLongPress: () {
                print('Long press');
              },
              onTap: () {
                // TODO: Navigate to broser
                print('link clicked');
              },
              child: Column(
                children: [
                  Text('Find us on'),
                  Text('https://www.google.com'),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
