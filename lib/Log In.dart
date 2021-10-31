import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Username or Email Address',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  shadowColor: Colors.black87,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      shadowColor: Colors.black,
                      child: Column(children: [
                        Container(
                          height: 50,
                          padding: EdgeInsets.only(right: 30, left: 30),
                          child: Row(children: [
                            Spacer(),
                            Icon(Icons.visibility_sharp,color: Colors.blue,),
                          ]),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.web_asset_outlined),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                              fontSize: 20,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Third');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(
                              'Log In',
                              style: TextStyle( fontSize: 20,color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        SizedBox(
                          child: TextButton(
                              onPressed: () {Navigator.pushNamed(context, '/second');}, child: Text('create new one')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
