import 'package:flutter/material.dart';

class GridTopBarWidget extends StatelessWidget {
  final String title;
  final Color color;
  GridTopBarWidget({this.color, this.title});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            margin: const EdgeInsets.only(left: 8, right: 8, top: 10),
            padding: const EdgeInsets.all(8),
            child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
