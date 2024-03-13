/*
 * Software Name : Orange Design System
 * SPDX-FileCopyrightText: Copyright (c) Orange SA
 * SPDX-License-Identifier: MIT
 *
 * This software is distributed under the MIT license,
 * the text of which is available at https://opensource.org/license/MIT/
 * or see the "LICENSE" file for more details.
 *
 * Software description: Flutter library of reusable graphical components for Android and iOS
 */

import 'package:ods_flutter_demo/l10n/gen/ods_flutter_app_localizations.dart';

enum TextFieldEnum {
  single,
  multi;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      single => l10n.componentTextFieldInputTypeSingleLine,
      multi => l10n.componentTextFieldInputTypeMultiline
    };
  }
}

enum TextFieldStateEnum {
  stateDefault,
  error,
  disabled;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      stateDefault => l10n.componentStateDefault,
      disabled => l10n.componentStateDisabled,
      error => l10n.componentStateError
    };
  }
}

enum TextFieldTrailingEnum {
  none,
  icon,
  text;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      none => l10n.componentElementNone,
      icon => l10n.componentElementIcon,
      text => l10n.componentElementText
    };
  }
}
