import 'package:flutter/material.dart';

import 'package:tofas_spor_okullari/presentation/common_widgets/page_indicator/page_indicator_item.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const PageIndicator({super.key, required this.currentPage, required this.pageCount});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _getIndicators(),
      );

  List<Widget> _getIndicators() {
    final List<Widget> list = <Widget>[];
    for (var i = 0; i < pageCount; i++) {
      list.add(PageIndicatorItem(i, currentPage));
    }
    return list;
  }
}
