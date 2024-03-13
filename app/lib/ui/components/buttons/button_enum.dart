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

///Button Contained
/// * [functionalPositive] - Text displayed in the button with a functional positive style.
/// * [functionalNegative] - Text displayed in the button with a functional negative style.
/// * [functionalPrimary] - Text displayed in the button with a primary style.
/// * [functionalDefault] - Text displayed in the button with a default style.
enum ButtonsEnum {
  functionalPositive,
  functionalNegative,
  functionalPrimary,
  functionalDefault;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      functionalPositive => l10n.buttonsFunctionalPositiveEnum,
      functionalNegative => l10n.buttonsFunctionalNegativeEnum,
      functionalDefault => l10n.buttonsTextFunctionalDefaultEnum,
      functionalPrimary => l10n.buttonsTextFunctionalPrimaryEnum
    };
  }
}
