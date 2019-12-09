import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _buildHeader2(),
          _buildHeader1(),
          _buildFooter2(),
          _buildFooter1(),
          _buildButtonLogin(),
          _buildTitleRegister(),
          _buildFormLogin()
        ],
      ),
    );
  }

  Widget _buildFormLogin() => Positioned(
        left: 0,
        right: 0,
        top: 280.0,
        child: Container(
          height: 180.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                right: 30.0,
                child: Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 4.0)
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          height: 61.0,
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
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      Container(
                          height: 56.0,
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
                              ))),
                      Container(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      Container(
                          height: 61.0,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Icon(
                                      Icons.email,
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
                                              hintText: 'Email Address'),
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
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildTitleRegister() => Positioned.fill(
      top: 220,
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'Register',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
        ),
      ));

  Widget _buildButtonLogin() => Positioned(
        top: 170,
        right: 0,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0)),
          child: Container(
            width: 70.0,
            height: 40.0,
            child: Center(
                child: Text(
              'Login',
              style:
                  TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0))),
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
            color: Color(0xffe82c0c),
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
            color: Color(0xfff9530e),
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
            color: Color(0xffe82c0c),
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
            color: Color(0xfff9530e),
            shape: BoxShape.circle,
          ),
        ),
      );
}
