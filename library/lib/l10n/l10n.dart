import 'package:flutter/material.dart';
import 'package:ods_flutter/l10n/gen/ods_localizations.dart';

extension OdsLocalizationsExtensions on BuildContext {
  OdsLocalizations get odsL10n => OdsLocalizations.of(this)!;
}
