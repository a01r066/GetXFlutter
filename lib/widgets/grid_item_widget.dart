import 'package:flutter/material.dart';

class GridItemWidget extends StatelessWidget {
  final String subject;
  Function()? tapAction;

  GridItemWidget({required this.subject });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapAction!();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[700],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subject,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
