import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/models/version_checker.dart';

checkVersion(BuildContext context) async {
  try {
    final VersionChecker checker = VersionChecker(context);
    await checker.init();
  } catch (e) {
    debugPrint(e.toString());
  }
}
