import 'package:flutter/material.dart';

class SuggestionContainer extends StatefulWidget {
  final String text;
  const SuggestionContainer({super.key, required this.text});

  @override
  State<SuggestionContainer> createState() => _SuggestionContainerState();
}

class _SuggestionContainerState extends State<SuggestionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 8, 0, 3),
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(widget.text, textAlign: TextAlign.center),
    );
  }
}

