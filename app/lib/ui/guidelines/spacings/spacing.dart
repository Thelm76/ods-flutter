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

import 'package:ods_flutter/guidelines/spacings.dart';

enum Spacing {
  none,
  xs,
  s,
  m,
  l,
  xl,
  xxl;

  double get rawValue {
    return switch (this) {
      none => spacingNone,
      xs => spacingXs,
      s => spacingS,
      m => spacingM,
      l => spacingL,
      xl => spacingXl,
      xxl => spacingXxl
    };
  }

  String get name {
    return switch (this) {
      none => "spacingNone",
      xs => "spacingXs",
      s => "spacingS",
      m => "spacingM",
      l => "spacingL",
      xl => "spacingXl",
      xxl => "spacingXxl"
    };
  }

  String get ratio {
    return switch (this) {
      none => "Ratio -",
      xs => "Ratio 0.5",
      s => "Ratio 1",
      m => "Ratio 2",
      l => "Ratio 3",
      xl => "Ratio 4",
      xxl => "Ratio 5"
    };
  }

  String get ratioSpokenValue {
    return switch (this) {
      none => "0",
      xs => "0.5",
      s => "1",
      m => "2",
      l => "3",
      xl => "4",
      xxl => "5"
    };
  }

  String get accessibilityLabel {
    return "${rawValue.toInt()} ${rawValue < 2 ? "pixel" : "pixels"}, "
        "Token name: $name, "
        "Ratio: $ratioSpokenValue";
  }
}
