import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final Color color;
  final String text;

  const TagWidget({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 20,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.white),
          ),
        ),
      );
}
