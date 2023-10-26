import 'package:chat_app/widgets/login_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);

      //TODO: Add Named Routes instead of anonymous routes
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: '${userNameController.text}');
      print('login successful!');
    } else {
      print('not successful!');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              Text(
                'Welcome back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blueGrey),
              ),
              Image.network(
                'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
                height: 200,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    LoginTextField(
                      hintText: 'Enter your username',
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return "Your username should be more than 5 characters";
                        } else if (value != null && value.isEmpty) {
                          return "Please type your username";
                        }
                        return null;
                      },
                      controller: userNameController,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    LoginTextField(
                      hasAsterisks: true,
                      hintText: 'Enter your password',
                      controller: passwordController,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {
                    loginUser(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  )),
              GestureDetector(
                onTap: () {
                  //todo: Navigate to browser
                  print('Link clicked!');
                },
                child: Column(
                  children: [
                    Text('Find us on'),
                    Text('https://poojabhaumik.com'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
