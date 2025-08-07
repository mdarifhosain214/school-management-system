import 'package:flutter/material.dart';

class OperationProvider extends ChangeNotifier {
  bool _isHovered = false;
  bool get isHovered => _isHovered;
  isHovere({required bool isHovered}) {
    _isHovered = isHovered;
    notifyListeners();
  }

  bool _isDesktopSidebar = true;
  bool get isDesktopSidebar => _isDesktopSidebar;
  desktopSidebar({required bool isDesktopSidebar}) {
    _isDesktopSidebar = isDesktopSidebar;
    notifyListeners();
  }
}
