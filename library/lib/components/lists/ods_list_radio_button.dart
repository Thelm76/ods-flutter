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
import 'package:ods_flutter/l10n/l10n.dart';

/// ODS OdsListRadioButton.
///
/// The OdsCheckbox widget represents a checkbox element that can be checked or unchecked.
/// It allows for handling the checkbox state and triggering a callback when its state changes.
class OdsListRadioButton<T> extends StatefulWidget {
  /// Creates an ODS OdsListRadioButton.
  const OdsListRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onCheckedChange,
    this.enabled = true,
  });

  /// The primary content of the list tile
  final String title;

  /// The value.
  final T value;

  /// The group value
  final T? groupValue;

  /// A callback function to handle changes in the checked state.
  final void Function(T?)? onCheckedChange;

  /// Controls the enabled state of the radio button. When false, this button will not be clickable.
  final bool enabled;

  @override
  State<OdsListRadioButton<T>> createState() => _OdsRadioButtonState<T>();
}

class _OdsRadioButtonState<T> extends State<OdsListRadioButton<T>> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.odsL10n;

    /*
    String radioButtonValue = widget.value == null
        ? l10n.componentCheckboxesIndeterminate
        : widget.value ?? false
        ? l10n.componentCheckboxesChecked
        : l10n.componentCheckboxesUnchecked;

     */

    return Semantics(
      //value: radioButtonValue,
      enabled: widget.enabled,
      hint: l10n.componentCheckboxes,
      excludeSemantics: true,
      child: RadioListTile<T>(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        value: widget.value,
        onChanged: widget.enabled ? widget.onCheckedChange : null,
        groupValue: widget.groupValue,
      ),
    );
  }
}
