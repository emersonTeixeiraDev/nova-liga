import 'package:flutter/material.dart';

class TableIndicesWidget extends StatelessWidget {
  const TableIndicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Center(
                child: Text(
                  'Time',
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'Pts',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'J',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'V',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'E',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'D',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'GP',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'GC',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'CA',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'CV',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 35,
              child: Text(
                'SG',
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
