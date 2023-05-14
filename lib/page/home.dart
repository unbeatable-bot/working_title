/// 로그인 후 캘린더가 있는 페이지


import 'package:flutter/material.dart';

import '../widget_calendar/ma_calendar.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                title: const Text('(Working Title) My App'),
                backgroundColor: Colors.black,
                actions: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.account_circle_outlined),
                        onPressed: () => print('Search button pressed'),
                      ),
                    ],
                  ),
                ],
              ),
      body:  LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.9,
                      color: Colors.black,
                      child: const MaCalendar(daysInMonth: 30,),
                    ),
                    Container(
                      height: constraints.maxHeight * 0.1,
                      color: Colors.white,
                      child: const Text('AD'),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
