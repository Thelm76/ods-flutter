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

import 'package:ods_flutter/components/button/segmented/button_icon/ods_button_icon_style_enum.dart';
import 'package:ods_flutter_demo/l10n/gen/ods_flutter_app_localizations.dart';

///Button Icon
/// * [functionalStandard] - Text displayed in the button with a standard icon button style.
/// * [functionalFilled] - Text displayed in the button with a functional filled icon button style.
/// * [functionalTonal] - Text displayed in the button with a tonal icon button style.
/// * [functionalOutlined] - Text displayed in the button with a outlined icon style.
enum ButtonsIconEnum {
  functionalStandard,
  functionalFilled,
  functionalTonal,
  functionalOutlined;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      functionalStandard => l10n.buttonsIconFunctionalStandardEnum,
      functionalFilled => l10n.buttonsIconFunctionalFilledEnum,
      functionalTonal => l10n.buttonsIconFunctionalTonalEnum,
      functionalOutlined => l10n.buttonsIconFunctionalOutlinedEnum
    };
  }

  OdsButtonIconStyle get iconStyle {
    return switch (this) {
      functionalStandard => OdsButtonIconStyle.functionalStandard,
      functionalFilled => OdsButtonIconStyle.functionalFilled,
      functionalTonal => OdsButtonIconStyle.functionalTonal,
      functionalOutlined => OdsButtonIconStyle.functionalOutlined,
    };
  }
}
