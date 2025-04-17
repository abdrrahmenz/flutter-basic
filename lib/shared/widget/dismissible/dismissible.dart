import 'package:flutter/material.dart';
import 'package:flutter_basic/core.dart';

Widget QDismissible({
  required Function onDismiss,
  required Widget child,
}) {
  return Dismissible(
    key: UniqueKey(),
    onDismissed: (detail) => onDismiss(),
    confirmDismiss: (direction) async {
      bool confirm = await showConfirmationDialog();

      if (confirm) {
        onDismiss();
        return Future.value(true);
      }
      return Future.value(false);
    },
    child: child,
  );
}
