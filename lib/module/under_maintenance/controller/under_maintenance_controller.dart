import 'package:flutter/material.dart';
import 'package:flutter_basic/core.dart';

import '../view/under_maintenance_view.dart';

class UnderMaintenanceController extends State<UnderMaintenanceView> {
  static late UnderMaintenanceController instance;
  late UnderMaintenanceView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
