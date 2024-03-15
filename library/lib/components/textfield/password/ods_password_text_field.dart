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

/// ODS OdsPasswordTextField.
///
/// A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.
///
///.
class OdsPasswordTextField extends StatefulWidget {
  const OdsPasswordTextField({
    super.key,
    this.controller,
    this.onClick,
    this.enabled = true,
    this.errorMessage,
    this.label,
    this.keyboardType,
    this.keyboardActions,
    this.characterCounter,
    this.doCapitalizeText = false,
    this.onValueChange,
    this.hasVisualisationIcon = true,
  });

  /// A controller for an editable text field
  final TextEditingController? controller;

  /// Called when the user selects a value from the popup menu created by this button
  final Function(String)? onClick;

  /// If false the text field is disabled. It ignores taps and its decoration is rendered in grey
  final bool enabled;

  /// If non-null, the border's color animates to red and the [helperText] is
  /// not shown.
  final String? errorMessage;

  /// Optional text that describes the input field
  final String? label;

  /// Optional text that describes the input field
  final TextInputType? keyboardType;

  /// When the input service emits an IME action, the corresponding callback is called.
  final TextInputAction? keyboardActions;

  /// Character counter displayed below the text field
  final int? characterCounter;

  /// Configures how the platform keyboard will select an uppercase or lowercase keyboard
  final bool doCapitalizeText;

  /// Callback that is triggered when the input service updates the text. An updated text comes as a parameter of the callback
  final Function(String)? onValueChange;

  /// Controls the display of the eye icon to allow showing/hiding password
  final bool hasVisualisationIcon;

  @override
  State<OdsPasswordTextField> createState() => _OdsPasswordTextFieldState();
}

class _OdsPasswordTextFieldState extends State<OdsPasswordTextField> {
  @override
  void initState() {
    super.initState();
  }

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.hasVisualisationIcon && isObscureText,
      keyboardType: widget.keyboardType,
      textInputAction: widget.keyboardActions,
      onChanged: widget.onValueChange,
      textCapitalization: widget.doCapitalizeText
          ? TextCapitalization.characters
          : TextCapitalization.none,
      keyboardAppearance: Theme.of(context).brightness == Brightness.dark
          ? Brightness.dark
          : Brightness.light,
      maxLength: widget.characterCounter,
      enabled: widget.enabled,
      decoration: InputDecoration(
        suffixIcon: widget.hasVisualisationIcon
            ? IconButton(
                icon: isObscureText
                    ? const Icon(
                        Icons.visibility_off_outlined,
                      )
                    : const Icon(
                        Icons.visibility_outlined,
                      ),
                onPressed: () {
                  setState(
                    () {
                      isObscureText = !isObscureText;
                    },
                  );
                },
              )
            : null,
        labelText: widget.label,
        errorText: widget.errorMessage,
        border: const OutlineInputBorder(),
        filled: false,
      ),
    );
  }
}
