import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  selectDate( { required BuildContext context,
     String select = 'first',
      required TextEditingController textController}) async {
    if (select == 'first') {
      log(DateFormat('dd-MMM-yyyy').format(DateTime.now()));
      textController.text =
          DateFormat('dd-MMM-yyyy').format(DateTime.now()); // format directly
      notifyListeners();
      return;
    }

    DateTime selectedDate = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      log(DateFormat('dd-MMM-yyyy').format(picked));
      textController.text = DateFormat('dd-MMM-yyyy').format(picked);
      // correct formatting
      notifyListeners();
    }

    // empty string if user cancels
  }
}
