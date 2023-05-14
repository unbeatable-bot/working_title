/// 일자와 Task가 입력되는 블록


import 'package:flutter/material.dart';

class DayBlock extends StatelessWidget {
  final int day;

  const DayBlock({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              SizedBox(
                height: constraints.maxHeight*0.2,
                child: Text(
                  '$day',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight*0.8,
                child: const Text(
                  'Some schedule',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
