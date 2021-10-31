import 'package:flutter/material.dart';

class LoginS extends StatelessWidget {
  const LoginS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouHelp Pro'),
        leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200,),
            const Center(
              child: Text('Login Successful'),
            ),
            const SizedBox(height: 50,),
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: const Text(
                        'Log Out',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
