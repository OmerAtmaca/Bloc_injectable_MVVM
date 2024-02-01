import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/presentation/utils/custom_colors.dart';

class CustomDropDown<T> extends StatefulWidget {
  final List<T> items;
  final Function onSelected;
  final String hint;
  final T? selectedItem;
  final bool isActive;
  final bool isError;
  final Function isValid;
  final String Function(T value) toReadableName;
  final BoxDecoration? buttonDecoration;

  const CustomDropDown({
    super.key,
    required this.items,
    this.hint = "",
    required this.onSelected,
    this.selectedItem,
    this.isActive = true,
    this.isError = false,
    required this.isValid,
    required this.toReadableName,
    this.buttonDecoration,
  });

  @override
  State<CustomDropDown<T>> createState() => _CustomDropDownState<T>();
}

class _CustomDropDownState<T> extends State<CustomDropDown<T>> {
  T? currentItem;
  late final FocusNode focusNode;
  bool isOpen = false;
  bool isError = false;
  bool isFocused = false;

  @override
  void initState() {
    isError = widget.isError;
    currentItem = widget.selectedItem;
    focusNode = FocusNode();
    focusNode.addListener(
      () => setState(() {
        isFocused = focusNode.hasFocus;
        if (currentItem == null && isFocused) isError = true;
      }),
    );
    super.initState();
  }

  @override
  void didUpdateWidget(CustomDropDown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedItem != oldWidget.selectedItem) {
      currentItem = widget.selectedItem;
    }
  }

  @override
  Widget build(BuildContext context) => AbsorbPointer(
        absorbing: !widget.isActive,
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<T>(
            focusNode: focusNode,
            isExpanded: true,
            value: currentItem,
            iconStyleData: IconStyleData(
              icon: Icon(
                isOpen ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                color: CustomColors.heather,
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: CustomColors.geyser),
                color: Colors.white,
              ),
            ),
            onMenuStateChange: (isOpen) => this.isOpen = isOpen,
            underline: const SizedBox(),
            isDense: true,
            buttonStyleData: ButtonStyleData(
              height: 60,
              padding: const EdgeInsets.only(right: 14),
              decoration: widget.buttonDecoration ??
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    border: Border.all(width: 1.0, color: getBorderColor()),
                  ),
            ),
            hint: Text(
              widget.hint,
              style: const TextStyle(color: CustomColors.heather, fontWeight: FontWeight.w500, fontSize: 16),
            ),
            items: widget.items
                .map(
                  (T item) => DropdownMenuItem<T>(
                    value: item,
                    child: Text(
                      widget.toReadableName(item),
                      style: const TextStyle(
                        color: CustomColors.manatee,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        inherit: false,
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (T? newValue) {
              setState(() {
                currentItem = newValue;
                widget.onSelected(currentItem);
                if (currentItem == null) {
                  widget.isValid(false);
                  isError = true;
                } else {
                  widget.isValid(true);
                  isError = false;
                }
              });
            },
            selectedItemBuilder: (context) => widget.items
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.hint,
                          style: const TextStyle(
                            color: CustomColors.heather,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.toReadableName(item),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: CustomColors.tarawera,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  Color getBorderColor() {
    if (isError) {
      return CustomColors.mojo;
    } else if (focusNode.hasFocus) {
      return CustomColors.matisse;
    } else {
      return CustomColors.heather.withOpacity(0.7);
    }
  }
}
