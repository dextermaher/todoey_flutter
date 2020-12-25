import 'package:flutter/material.dart';
import 'package:todoeyflutter/constants/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallBack;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallBack,
    this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          color: kTextColor,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: kMainColor,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
