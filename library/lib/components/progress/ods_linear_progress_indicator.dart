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
import 'package:ods_flutter/guidelines/spacings.dart';
import 'package:ods_flutter/l10n/gen/ods_localizations.dart';

class OdsLinearProgressIndicator extends StatelessWidget {
  /// ODS CircularProgressIndicator.
  const OdsLinearProgressIndicator({
    Key? key,
    this.progress,
    this.label,
    this.icon,
    this.showCurrentValue,
  }) : super(key: key);

  /// The initial value of the circular progress indicator.
  final double? progress;

  /// The label text step of the circular progress indicator.
  final String? label;

  /// The icon of the circular progress indicator.
  final Widget? icon;

  /// The final bool? showCurrentValue; step of the circular progress indicator.
  final bool? showCurrentValue;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: spacingS, bottom: spacingS),
            child: Row(
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 8),
                ],
                if (label != null)
                  Flexible(
                    child: Text(
                      label!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
              ],
            ),
          ),
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: progress ?? 0.0),
            duration: const Duration(seconds: 5),
            builder: (BuildContext context, double value, Widget? child) {
              final progressValue = value * 100;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LinearProgressIndicator(
                    semanticsLabel:
                        OdsLocalizations.of(context)!.componentProgressTitle,
                    value: progress != null ? value : null,
                  ),
                  ExcludeSemantics(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: spacingS, bottom: spacingS),
                      child:
                          showCurrentValue == true && showCurrentValue != null
                              ? Text(
                                  "${progressValue.toInt()} %",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              : null,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
