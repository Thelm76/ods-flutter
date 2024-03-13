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

import 'package:flutter/material.dart';
import 'package:ods_flutter/components/button/segmented/button_icon/ods_button_icon_style_enum.dart';

/// ODS Design Button.
///
/// Displays a customizable button with an optional icon and a title.
/// The button can expand to full screen width if specified.
class OdsButtonIcon extends StatefulWidget {
  /// Creates an ODS Button.
  ///
  /// * [isSelected] - The optional selection state of the icon button.
  /// * [isEnabled] - The optional selection state enabled/disabled of the icon button.
  /// * [icon] - The icon to display inside the button.
  /// * [onClick] - The action to be executed when the button is pressed.
  /// * [selectedIcon] - The icon to display inside the button when [isSelected] is true. This property can be null
  /// * [style] - The button's style color.
  const OdsButtonIcon({
    Key? key,
    required this.icon,
    this.selectedIcon,
    this.isSelected = false,
    this.isEnabled = true,
    this.onClick,
    this.style = OdsButtonIconStyle.functionalStandard,
  }) : super(key: key);

  /// The optional selection state of the icon button.
  final bool isSelected;

  /// The optional selection state enabled/disabled of the icon button.
  final bool isEnabled;

  /// The icon to display inside the button.
  final Widget icon;

  /// The icon to display inside the button when [isSelected] is true. This property
  /// can be null.
  final Widget? selectedIcon;

  /// The action to be executed when the button is pressed.
  final void Function()? onClick;

  /// The button's style color.
  final OdsButtonIconStyle style;

  @override
  State<OdsButtonIcon> createState() => _OdsButtonState();
}

class _OdsButtonState extends State<OdsButtonIcon> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return IconButton(
      visualDensity: VisualDensity.standard,
      isSelected: widget.isSelected,
      icon: ColorFiltered(
        colorFilter: ColorFilter.mode(
          widget.style.getIconSelectedColor(colors, enabled: widget.isEnabled),
          BlendMode.srcIn,
        ),
        child: widget.icon,
      ),
      selectedIcon: ColorFiltered(
        colorFilter: ColorFilter.mode(
          widget.style
              .getIconDeselectedColor(colors, enabled: widget.isEnabled),
          BlendMode.srcIn,
        ),
        child: widget.icon,
      ),
      onPressed: widget.isEnabled ? widget.onClick : null,
      style: widget.style.getButtonStyle(
        colors,
        selected: widget.isSelected,
        enabled: widget.isEnabled,
      ),
    );
  }
}
