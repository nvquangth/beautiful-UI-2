import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/register.dart';
import 'package:login_ui/util/transitionpage/transition_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _buildHeader2(),
          _buildHeader1(),
          _buildFooter2(),
          _buildFooter1(),
          _buildButtonRegister(),
          _buildTitleLogin(),
          _buildFormLogin(),
          _buildButtonForgotPassword()
        ],
      ),
    );
  }

  Widget _buildButtonForgotPassword() => Positioned(
        top: 400.0,
        right: 50.0,
        child: FlatButton(
          onPressed: () {},
          splashColor: Colors.white,
          highlightColor: Colors.white,
          child: Text(
            'Forgot password?',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      );

  Widget _buildFormLogin() => Positioned(
        left: 0,
        right: 0,
        top: 280.0,
        child: Container(
          height: 120.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 30.0,
                child: Container(
                  height: 120.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0)
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          height: 60.0,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Icon(
                                      Icons.perm_identity,
                                      size: 16.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 36.0),
                                        child: TextField(
                                          decoration: InputDecoration.collapsed(
                                              hintText: 'Username'),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ))),
                      Container(
                          height: 60.0,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Icon(
                                      Icons.lock,
                                      size: 16.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 36.0),
                                        child: TextField(
                                          obscureText: true,
                                          decoration: InputDecoration.collapsed(
                                              hintText: 'Password'),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )))
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                right: 30.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                right: 5.0,
                top: 0,
                bottom: 0,
                child: FloatingActionButton(
                  elevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  onPressed: () {},
                  backgroundColor: Color(0xff31c0f4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildTitleLogin() => Positioned.fill(
      top: 220,
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'Login',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
        ),
      ));

  Widget _buildButtonRegister() => Positioned(
        bottom: 170,
        left: 0,
        child: InkWell(
          onTap: _gotoRegisterPage,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0)),
          child: Container(
            width: 90.0,
            height: 40.0,
            child: Center(
                child: Text(
              'Register',
              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0))),
          ),
        ),
      );

  Widget _buildHeader1() => Positioned(
        top: -170.0,
        left: 5.0,
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            color: Color(0xff0c4a81),
            shape: BoxShape.circle,
          ),
        ),
      );

  Widget _buildHeader2() => Positioned(
        top: -80.0,
        left: -150.0,
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            color: Color(0xff2f3192),
            shape: BoxShape.circle,
          ),
        ),
      );

  Widget _buildFooter1() => Positioned(
        bottom: -170.0,
        right: 5.0,
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            color: Color(0xff0c4a81),
            shape: BoxShape.circle,
          ),
        ),
      );

  Widget _buildFooter2() => Positioned(
        bottom: -80.0,
        right: -150.0,
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            color: Color(0xff2f3192),
            shape: BoxShape.circle,
          ),
        ),
      );

  _gotoRegisterPage() {
    Navigator.push(context, SlideLeftRoute(page: Register()));
  }
}
