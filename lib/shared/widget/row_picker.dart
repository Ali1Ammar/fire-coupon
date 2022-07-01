import 'package:flutter/material.dart';

class SinglePicker<T> extends StatelessWidget {
  final List<T> items;
  final T currentValue;
  final String Function(T) getTitle;
  final ValueChanged<T> onChanged;
  final Axis axis;
  const SinglePicker(
      {Key? key,
      required this.items,
      required this.currentValue,
      required this.getTitle,
      required this.onChanged, this.axis=Axis.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  return Row(
    //     children: items.map((item) => widget(child: Text(getTitle(item)))).toList(),
    //   );
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.center ,
      crossAxisAlignment: CrossAxisAlignment.center ,
      children: items.map((item) {
        final isSelected = currentValue == item;
        Widget child = Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: ElevatedOrOutlinedButton(
                buttonType:
                    isSelected ? ButtonType.elevated : ButtonType.outlined,
                onPressed: () {
                  onChanged(item);
                },
                child: Text(
                  getTitle(item),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                )),
          ),
        );
        if( axis==Axis.horizontal) child = Expanded(child: child,);
        return child;
      }).toList(),
    );
    // return ToggleButtons(
    //   isSelected: items.map((e) => e == currentValue).toList(),
    //   constraints: BoxConstraints(minWidth: 100.0, minHeight: 48.0),
    //   onPressed: (index) {
    //     onChanged(items[index]);
    //   },
    //   children: items.map((item) => Text(getTitle(item))).toList(),
    // );
  }
}



enum ButtonType { elevated, outlined }

class ElevatedOrOutlinedButton extends StatelessWidget {
  final Widget child;
  final ButtonStyle? styleElevated;
  final ButtonStyle? styleOutlined;
  final VoidCallback onPressed;
  final bool isExp;
  final ButtonType buttonType;
  const ElevatedOrOutlinedButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      required this.buttonType,
      this.isExp = false,
      this.styleElevated,
      this.styleOutlined})
      : super(key: key);
  @required
  @override
  Widget build(BuildContext context) {
    Widget widget;
    if (isExp) {
      widget = SizedBox(
        width: double.maxFinite,
        child: Center(child: child),
      );
    } else {
      widget = child;
    }
    switch (buttonType) {
      case ButtonType.elevated:
        return ElevatedButton(
          style: styleElevated,
          onPressed: onPressed,
          child: widget,
        );
      case ButtonType.outlined:
        return OutlinedButton(
          style: styleOutlined,
          onPressed: onPressed,
          child: widget,
        );
    }
  }
}
