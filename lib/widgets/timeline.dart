// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  const Timeline({
    super.key,
    required this.child,
    this.isFirst = false,
    this.isLast = false,
  });

  final Widget child;
  final bool? isFirst;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return timelineItem();
  }

  Widget timelineItem() {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!isFirst!) ...[
                Container(
                  width: 5,
                  height: 10,
                  color: Colors.blue.shade100,
                ),
              ] else ...[
                const SizedBox(height: 10)
              ],
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue.shade100,
                ),
              ),
              if (isLast!) ...[
                Flexible(
                  child: Container(
                    width: 5,
                    color: Colors.blue.shade100,
                  ),
                ),
              ],
            ],
          ),
          child,
        ],
      ),
    );
  }
}
