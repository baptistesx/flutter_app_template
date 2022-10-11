import 'package:flutter/material.dart';
import 'package:mobile_app/theme/themes.dart';

TextStyle primarySmallTextStyle(BuildContext context) =>
    context.theme.textTheme.bodySmall!.copyWith(
      color: context.theme.primaryColor,
    );
