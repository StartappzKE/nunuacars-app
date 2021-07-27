import 'package:flutter/material.dart';
import 'package:nunuacars/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *
                            kPaddingWithSpacing,
                      ),
                      Text(
                        'Username',
                      ),
                      SizedBox(height: 5.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Password',
                      ),
                      SizedBox(height: 5.0),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      TextButton(
                        onPressed: () {
                          // go to home Screen
                          Navigator.pushNamed(context, '/passReset');
                        },
                        child: Text(
                          'Forgot Password?',
                        ),
                      ),
                      SizedBox(height: 5.0),
                      TextButton(
                        onPressed: () {
                          // go to home Screen
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text('LOGIN'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('No account ? '),
                          SizedBox(width: 15.0),
                          TextButton(
                            onPressed: () {
                              // go to home Screen
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text('Sign up'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
