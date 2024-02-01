import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


extension MediaQueryExt on BuildContext {
  double screenWidth() => MediaQuery.of(this).size.width;

  double screenHeight() => MediaQuery.of(this).size.height;

  double topPadding() => MediaQuery.of(this).padding.top;

  double screenWidthOneQuarter() => MediaQuery.of(this).size.width / 4;

  double bottomSafeAreaHeight() => MediaQuery.of(this).padding.bottom;
}

extension StringExt on String {
  bool isValidEmail() => RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      ).hasMatch(this);

  bool isValidPhoneNumber() => RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(this);

  bool isValidUnmaskedPhoneNumber() {
    debugPrint(this);
    debugPrint("${RegExp(r'(^[\+]?[0-9]{3}[0-9]{3}[0-9]{4,6}$)').hasMatch(this)}");
    return RegExp(
      r'(^[\+]?[0-9]{3}[0-9]{3}[0-9]{4,6}$)',
    ).hasMatch(this);
  }

  String decodeBase64() {
    final bytes = base64.decode(this);
    return utf8.decode(bytes);
  }

  String getUnmaskedPhone() => replaceAll("(", "").replaceAll(")", "").replaceAll(" ", "").replaceAll("-", "");

  String clearEmptyChars() => replaceAll(" ", "");

  String extractYear() {
    if (length < 5) {
      throw ArgumentError('date string must be at least 5 characters long');
    }
    final String yearStr = split("/")[1];
    final int yearValue = int.parse(yearStr);
    return (2000 + yearValue).toString();
  }

  String extractMonth() {
    if (length < 5) {
      throw ArgumentError('date string must be at least 5 characters long');
    }
    final String monthStr = split("/")[0];
    return "${int.parse(monthStr)}";
  }

  String toBearer() => "Bearer $this";

  String? getFileExtension() {
    try {
      return ".${split('.').last}";
    } catch(e){
      return null;
    }
  }
}

extension IntExt on int {
  String strDigits() => toString().padLeft(2, '0');
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<R> mapIndexed<R>(R Function(int index, T item) f) {
    var index = 0;
    return map((item) => f(index++, item));
  }
}

extension DateTimeExt on DateTime {
  DateTime withTimeAtStartOfDay() {
    final time = DateTime(year, month, day);
    return time;
  }

  String? getFormattedDate() => DateFormat('dd.MM.yyyy').format(this);
  String? getDateWithoutYear() => DateFormat('dd MMMM').format(this);
  String? getHourAndMinutes() => DateFormat('jm').format(this);
  String? getTimeAgo() {
    final now = DateTime.now();
    final difference = now.difference(this);
    if (difference.inSeconds < 60) {
      return '${difference.inSeconds}sn';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}d';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}s';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}g';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '${weeks}h';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '${months}a';
    } else {
      final years = (difference.inDays / 365).floor();
      return '${years}y';
    }
  }
}

extension DoubleExt on double {
  String cleanDecimals() {
    final NumberFormat formatter = NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(this);
  }
}