import 'package:flutter/material.dart';
import 'package:ruguide/presentation/utils/app_text_styles.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String title;
  final String content;

  ExpandableTextWidget({required this.title, required this.content});

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: AppTextStyles.underTitle
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Icon(
                _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30,
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: _isExpanded ? null : 0,
          curve: Curves.easeInOut,
          child: _isExpanded
              ? Text(
                  widget.content,
                  style: TextStyle(fontSize: 16),
                )
              : null,
        ),
      ],
    );
  }
}
