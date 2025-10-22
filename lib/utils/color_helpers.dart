import 'package:flutter/material.dart';

extension ColorHelpers on Color {
  Color withOpacityCompat(double opacity) => withAlpha((opacity * 255).round());
}
