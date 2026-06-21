

import 'package:flutter/material.dart';
import 'package:flutter_firebase/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext{
  AppLocalizations get localization => AppLocalizations.of(this);

}