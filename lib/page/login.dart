import 'package:flutter/material.dart';
import 'package:new_project/page/home.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
              SizedBox(height: 100),
              Text(
                '(Working Title) My App',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )
              ),
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // Google 로그인 처리
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeWidget()),
                      );
                    },
                    child: Row(
                      children: const[
                        Icon(Icons.account_circle_outlined, color: Colors.white,),
                        SizedBox(width: 10),
                        Text(
                          'Google',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // Apple 로그인 처리
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.account_circle_outlined, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Apple',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // 게스트 로그인 처리
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.account_circle_outlined, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Guest',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
              ],
              ),
              SizedBox(height: 100),
            ]
          ),
        ),
    );
  }
}
