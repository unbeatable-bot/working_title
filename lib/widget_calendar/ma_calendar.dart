///
/// 커스텀 달력
/// 월 선택
/// 월 화 수 목 금 토 일
/// dayBlock


import 'package:flutter/material.dart';
import 'day_block.dart';


class MaCalendar extends StatelessWidget {
  final int daysInMonth;

  const MaCalendar({Key? key, required this.daysInMonth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> days = List.generate(daysInMonth, (index) => index + 1);

    return Column(
      children: [
        const Text(
          '5월',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white)
          ),
        Row(
          children: const [
            Expanded(
              child: Text(
                'SUN', 
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blueAccent,
                )
              ),
            ),
            Expanded(
              child: Text(
                'MON',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                )),
            ),
            Expanded(
              child: Text(
                'TUE',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blueAccent,
                )),
            ),
            Expanded(
              child: Text(
                'WED',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blueAccent,
                )),
            ),
            Expanded(
              child: Text(
                'THR',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blueAccent,
                )),
            ),
            Expanded(
              child: Text(
                'FRI',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blueAccent,
                )),
            ),
            Expanded(
              child: Text(
                'SAT',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blueAccent,
                )),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.7,
            ),
            itemCount: days.length,
            itemBuilder: (context, index) {
              return DayBlock(day: days[index]);
            },
          ),
        ),
      ],
    );
  }
}
