import 'package:flutter/material.dart';

/// Responsive design utility class
class Responsive {
  final BuildContext context;

  Responsive(this.context);

  late final MediaQueryData _mediaQuery = MediaQuery.of(context);

  /// Get screen width
  double get screenWidth => _mediaQuery.size.width;

  /// Get screen height
  double get screenHeight => _mediaQuery.size.height;

  /// Check if device is mobile (width < 600)
  bool get isMobile => screenWidth < 600;

  /// Check if device is tablet (width >= 600 && width < 1200)
  bool get isTablet => screenWidth >= 600 && screenWidth < 1200;

  /// Check if device is desktop (width >= 1200)
  bool get isDesktop => screenWidth >= 1200;

  /// Get device type
  DeviceType get deviceType {
    if (isDesktop) return DeviceType.desktop;
    if (isTablet) return DeviceType.tablet;
    return DeviceType.mobile;
  }

  /// Get responsive padding based on device
  EdgeInsets get screenPadding {
    if (isDesktop) {
      return const EdgeInsets.symmetric(horizontal: 40, vertical: 32);
    }
    if (isTablet) {
      return const EdgeInsets.symmetric(horizontal: 24, vertical: 20);
    }
    return const EdgeInsets.symmetric(horizontal: 16, vertical: 16);
  }

  /// Get responsive horizontal padding
  double get horizontalPadding {
    if (isDesktop) {
      return 40;
    }
    if (isTablet) {
      return 24;
    }
    return 16;
  }

  /// Get responsive vertical padding
  double get verticalPadding {
    if (isDesktop) return 32;
    if (isTablet) return 20;
    return 16;
  }

  /// Get responsive spacing
  double get spacing {
    if (isDesktop) return 32;
    if (isTablet) return 24;
    return 16;
  }

  /// Get responsive small spacing
  double get spacingSmall {
    if (isDesktop) return 16;
    if (isTablet) return 12;
    return 8;
  }

  /// Get responsive icon size
  double get iconSize {
    if (isDesktop) return 32;
    if (isTablet) return 28;
    return 24;
  }

  /// Get responsive large icon size
  double get iconSizeLarge {
    if (isDesktop) return 64;
    if (isTablet) return 56;
    return 48;
  }

  /// Get responsive button height
  double get buttonHeight {
    if (isDesktop) return 56;
    if (isTablet) return 52;
    return 48;
  }

  /// Get responsive font size for body
  double get fontSizeBody {
    if (isDesktop) return 16;
    if (isTablet) return 15;
    return 14;
  }

  /// Get responsive font size for heading
  double get fontSizeHeading {
    if (isDesktop) return 32;
    if (isTablet) return 28;
    return 24;
  }

  /// Get responsive font size for subheading
  double get fontSizeSubheading {
    if (isDesktop) return 20;
    if (isTablet) return 18;
    return 16;
  }

  /// Get grid columns based on device
  int get gridColumns {
    if (isDesktop) return 4;
    if (isTablet) return 3;
    return 2;
  }

  /// Get container max width
  double get containerMaxWidth {
    if (isDesktop) return 1200;
    if (isTablet) return 800;
    return double.infinity;
  }

  /// Check if keyboard is shown
  bool get isKeyboardShown => _mediaQuery.viewInsets.bottom > 0;

  /// Get keyboard height
  double get keyboardHeight => _mediaQuery.viewInsets.bottom;
}

/// Device type enum
enum DeviceType { mobile, tablet, desktop }
