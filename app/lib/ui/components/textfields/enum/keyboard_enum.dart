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

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:ods_flutter_demo/l10n/gen/ods_flutter_app_localizations.dart';

enum KeyboardTypeEnum {
  text,
  decimal,
  email,
  number,
  phone,
  url;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      text => l10n.componentTextFieldKeyboardTypeText,
      decimal => l10n.componentTextFieldKeyboardTypeDecimal,
      email => l10n.componentTextFieldKeyboardTypeEmail,
      number => l10n.componentTextFieldKeyboardTypeNumber,
      phone => l10n.componentTextFieldKeyboardTypePhone,
      url => l10n.componentTextFieldKeyboardTypeUrl
    };
  }

  TextInputType get inputType => switch (this) {
        text => TextInputType.text,
        decimal => TextInputType.datetime,
        email => TextInputType.emailAddress,
        number => TextInputType.number,
        phone => TextInputType.phone,
        url => TextInputType.url,
      };
}

enum KeyboardActionEnum {
  none,
  defaultAction,
  done,
  go,
  search,
  send,
  previous,
  next;

  String stringValue(AppLocalizations l10n) {
    return switch (this) {
      none => l10n.componentTextFieldKeyboardActionNone,
      defaultAction => l10n.componentTextFieldKeyboardActionDefault,
      done => l10n.componentTextFieldKeyboardActionDone,
      go => l10n.componentTextFieldKeyboardActionGo,
      search => l10n.componentTextFieldKeyboardActionSearch,
      send => l10n.componentTextFieldKeyboardActionSend,
      previous => l10n.componentTextFieldKeyboardActionPrevious,
      next => l10n.componentTextFieldKeyboardActionNext
    };
  }

  TextInputAction get inputAction => switch (this) {
        none => kIsWeb || Platform.isAndroid
            ? TextInputAction.none
            : TextInputAction.unspecified,
        defaultAction => TextInputAction.send,
        done => TextInputAction.done,
        go => TextInputAction.go,
        search => TextInputAction.search,
        send => TextInputAction.send,
        previous => kIsWeb || Platform.isAndroid
            ? TextInputAction.previous
            : TextInputAction.unspecified,
        next => TextInputAction.next,
      };
}
