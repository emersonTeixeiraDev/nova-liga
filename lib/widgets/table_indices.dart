import 'package:flutter/material.dart';

class TableIndices extends StatelessWidget {
  const TableIndices({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Time',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 35,
            child: Text(
              'Pts',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.start,
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
    );
  }
}
