import 'package:flutter/material.dart';

///
///Specifying an [OdsButtonIconStyle] allow to display a button with specific colors.
///
///

enum OdsButtonIconStyle {
  functionalFilled,
  functionalTonal,
  functionalOutlined,
  functionalStandard;

  Color getIconSelectedColor(ColorScheme colors, {required bool enabled}) =>
      switch ((this, enabled)) {
        (_, false) => colors.onSurface.withOpacity(0.38),
        (functionalStandard, _) => colors.primary,
        (functionalFilled, _) => colors.onPrimary,
        (functionalTonal, _) => colors.onSecondary,
        (functionalOutlined, _) => colors.primary,
      };

  Color getIconDeselectedColor(ColorScheme colors, {required bool enabled}) =>
      switch ((this, enabled)) {
        (_, false) => colors.onSurface.withOpacity(0.38),
        (functionalFilled, _) => colors.primary,
        _ => colors.secondary,
      };

  ButtonStyle? getButtonStyle(
    ColorScheme colors, {
    required bool selected,
    required bool enabled,
  }) {
    return switch (this) {
      functionalStandard => null,
      functionalFilled => IconButton.styleFrom(
          foregroundColor: selected ? colors.onPrimary : colors.primary,
          backgroundColor: selected ? colors.primary : colors.tertiaryContainer,
          disabledForegroundColor: colors.onSurface.withOpacity(0.38),
          disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
          hoverColor: selected
              ? colors.onPrimary.withOpacity(0.08)
              : colors.primary.withOpacity(0.08),
          focusColor: selected
              ? colors.onPrimary.withOpacity(0.12)
              : colors.primary.withOpacity(0.12),
          highlightColor: selected
              ? colors.onPrimary.withOpacity(0.12)
              : colors.primary.withOpacity(0.12),
        ),
      functionalTonal => IconButton.styleFrom(
          foregroundColor:
              selected ? colors.onSecondaryContainer : colors.onSurfaceVariant,
          backgroundColor:
              selected ? colors.secondaryContainer : colors.surfaceVariant,
          disabledForegroundColor: colors.onSurface.withOpacity(0.38),
          disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
          hoverColor: selected
              ? colors.onSecondaryContainer.withOpacity(0.08)
              : colors.onSurfaceVariant.withOpacity(0.08),
          focusColor: selected
              ? colors.onSecondaryContainer.withOpacity(0.12)
              : colors.onSurfaceVariant.withOpacity(0.12),
          highlightColor: selected
              ? colors.onSecondaryContainer.withOpacity(0.12)
              : colors.onSurfaceVariant.withOpacity(0.12),
        ),
      functionalOutlined => IconButton.styleFrom(
          backgroundColor: Colors.transparent,
          hoverColor: selected
              ? colors.onInverseSurface.withOpacity(0.08)
              : colors.onSurfaceVariant.withOpacity(0.08),
          focusColor: selected
              ? colors.onInverseSurface.withOpacity(0.12)
              : colors.onSurfaceVariant.withOpacity(0.12),
          highlightColor: selected
              ? colors.onSurface.withOpacity(0.12)
              : colors.onSurface.withOpacity(0.12),
          side: BorderSide(
            color: enabled
                ? (selected ? colors.primary : colors.outline)
                : colors.onSurface.withOpacity(0.38),
          ),
        ).copyWith(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return colors.primary;
            }

            return null;
          }),
        ),
    };
  }
}
