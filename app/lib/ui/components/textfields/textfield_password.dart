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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ods_flutter/components/chips/ods_choice_chips.dart';
import 'package:ods_flutter/components/lists/ods_list_switch.dart';
import 'package:ods_flutter/components/sheets_bottom/ods_sheets_bottom.dart';
import 'package:ods_flutter/components/textfield/password/ods_password_text_field.dart';
import 'package:ods_flutter/guidelines/spacings.dart';
import 'package:ods_flutter_demo/l10n/l10n.dart';
import 'package:ods_flutter_demo/main.dart';
import 'package:ods_flutter_demo/ui/components/textfields/enum/textfield_enum.dart';
import 'package:ods_flutter_demo/ui/components/textfields/textfield_customization.dart';
import 'package:ods_flutter_demo/ui/theme/model_theme.dart';
import 'package:provider/provider.dart';

class ComponentTextFieldPassword extends StatefulWidget {
  const ComponentTextFieldPassword({super.key});

  @override
  State<ComponentTextFieldPassword> createState() =>
      _ComponentTextFieldPasswordState();
}

class _ComponentTextFieldPasswordState
    extends State<ComponentTextFieldPassword> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final themeNotifier = Provider.of<ModelTheme>(context);
    return TextFieldCustomization(
      child: Scaffold(
          bottomSheet: OdsSheetsBottom(
            sheetContent: _CustomizationContent(),
            title: l10n.componentCustomizeTitle,
          ),
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text(l10n.componentTextFieldPassword),
            actions: [
              IconButton(
                icon: Icon(themeNotifier.themeMode == ThemeMode.light
                    ? Icons.light_mode
                    : Icons.dark_mode),
                onPressed: () {
                  setState(
                    () {
                      FocusScope.of(context).unfocus();
                      themeNotifier.themeMode =
                          themeNotifier.themeMode == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;
                    },
                  );
                },
                tooltip: themeNotifier.themeMode == ThemeMode.light
                    ? l10n.themeSelectorSwitchDarkMode
                    : l10n.themeSelectorSwitchLightMode,
              ),
            ],
          ),
          body: _Body()),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final recipe = OdsApplication.recipes[Random().nextInt(
    OdsApplication.recipes.length,
  )];

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final customizationState = TextFieldCustomization.of(context);
    final controllerTextField = TextEditingController();

    final keyboardType = customizationState?.selectedKeyboardType.inputType;

    final keyboardAction =
        customizationState?.selectedKeyboardAction.inputAction;

    return Padding(
      padding: const EdgeInsets.all(spacingS),
      child: OdsPasswordTextField(
        controller: controllerTextField,
        enabled:
            customizationState?.selectedState == TextFieldStateEnum.disabled
                ? false
                : true,
        errorMessage:
            customizationState?.selectedState == TextFieldStateEnum.error
                ? l10n.componentTextFieldErrorMessage
                : null,
        keyboardType: keyboardType,
        keyboardActions: keyboardAction,
        label: l10n.componentElementLabel,
        characterCounter:
            customizationState?.characterCount == true ? 20 : null,
        doCapitalizeText:
            customizationState?.capitalization == true ? true : false,
        hasVisualisationIcon:
            customizationState?.visualisationIcon == true ? true : false,
      ),
    );
  }
}

class _CustomizationContent extends StatefulWidget {
  @override
  State<_CustomizationContent> createState() => _CustomizationContentState();
}

class _CustomizationContentState extends State<_CustomizationContent> {
  int selectedStateIndex = 0;
  bool isFilteredState = true;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final customizationState = TextFieldCustomization.of(context);

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(spacingM),
            child: Text(
              l10n.componentState,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List<Widget>.generate(
                customizationState!.states.length,
                (int index) {
                  TextFieldStateEnum currentElement =
                      customizationState.states[index];
                  bool isSelected =
                      currentElement == customizationState.selectedState;
                  return Padding(
                    padding: EdgeInsets.only(right: spacingXs, left: spacingS),
                    child: OdsChoiceChip(
                      text: customizationState.states[index].stringValue(l10n),
                      selected: isSelected,
                      onClick: (selected) {
                        setState(
                          () {
                            customizationState.selectedState =
                                customizationState.states[index];
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        OdsListSwitch(
            title: l10n.componentTextFieldVisualisationIcon,
            checked: customizationState.visualisationIcon,
            onCheckedChange: (bool value) {
              customizationState.visualisationIcon = value;
            }),
        OdsListSwitch(
            title: l10n.componentTextFieldCharacterCounter,
            checked: customizationState.characterCount,
            onCheckedChange: (bool value) {
              customizationState.characterCount = value;
            }),
      ],
    );
  }
}
