import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context,false),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'E-mail or Mobile number',
                        contentPadding: EdgeInsets.all(20.0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            width: 2.0,
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            width: 2.0
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(20),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                width: 2.0,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                  width: 2.0
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Center(
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 250.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(36),
                                  side: BorderSide(color: Colors.black)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              color: Colors.black,
                              textColor: Colors.white,
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 60.0),
                          Text(
                              'OR',
                            style: TextStyle(
                              fontSize: 20.0
                            ),
                          ),
                          SizedBox(height: 40.0),
                          ButtonTheme(
                            minWidth: 250.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(36),
                                  side: BorderSide(color: Colors.black)
                              ),
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              color: Colors.black,
                              textColor: Colors.white,
                              child: Text(
                                'Google Log in',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
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