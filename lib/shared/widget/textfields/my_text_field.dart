import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fausto/shared/styles/text_styles.dart';
import 'package:fausto/shared/styles/theme_color.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  TextEditingController? controller;
  final String hintText;
  final bool isObscured;
  final Function(dynamic)? onSelected;
  final Function(dynamic)? onSaved;
  final FormFieldValidator<String?>? validate;
  final Widget? prefixWidget;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? formatters;
  final TextInputType? textInputType;
  final TextStyle? textStyle;
  final InputDecoration? inputDecoration;
  final bool readOnly;
  final List<String>? initialData;
  final bool enabled;
  final Function(String)? onChanged;
  final Function? onClearText;
  final Future<List<String>> Function(String)? onAsyncSearch;
  final int maxLines;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;

  MyTextField({
    super.key,
    this.onChanged,
    this.backgroundColor,
    this.onAsyncSearch,
    this.initialData,
    this.onSelected,
    this.hintText = "digite alguma coisa",
    this.width = 200,
    this.height = 60,
    this.isObscured = false,
    this.enabled = true,
    this.onClearText,
    this.onSaved,
    this.validate,
    this.inputDecoration,
    this.textStyle,
    this.controller,
    this.prefixWidget,
    this.suffixIcon,
    this.formatters,
    this.textInputType,
    this.readOnly = false,
    this.maxLines = 1,
    this.textInputAction,
    this.focusNode,
  });

  @override
  MyTextFieldState createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  late bool _isPwdVisible;
  late bool _isTextFilled;
  late bool _isValid;
  List<String> filtered = <String>[];
  bool inSearch = false;
  @override
  void initState() {
    if (widget.initialData != null) {
      filtered = widget.initialData!;
    }
    _isPwdVisible = !widget.isObscured ? true : false;
    _isTextFilled = false;
    _isValid = true;
    super.initState();
  }

  void _changePwdVisible() => setState(() => _isPwdVisible = !_isPwdVisible);
  void _checkTextInput(String text) => setState(() {
        _isTextFilled = text.isNotEmpty && widget.controller != null;
        if (widget.validate != null) {
          _isValid = widget.validate!(text) == null;
        }
      });
  void _clearTextInput() => setState(() {
        widget.controller!.clear();
        if (widget.controller != null) {
          final text = widget.controller!.text;

          if (widget.validate != null) {
            _isValid = widget.validate!(text) == null;
          }
          _isTextFilled = text.isNotEmpty && widget.controller != null;
        }
      });

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors(context);
    // _defineObscured();

    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return [];
        }

        return filtered
            .where((option) => option
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase()))
            .toList();
      },
      onSelected: (String selection) {
        setState(() {
          if (widget.controller != null) {
            widget.controller!.text = selection;
          }
          if (widget.onSelected != null) {
            widget.onSelected!(selection);
          }
        });
      },
      optionsViewBuilder: (context, onSelected, options) {
        return Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
              color: colors.surface(), borderRadius: BorderRadius.circular(10)),
          child: ListView.builder(
              itemCount: options.length,
              itemBuilder: (ctx, index) =>
                  item(value: options.elementAt(index), onSelect: onSelected)),
        );
      },
      fieldViewBuilder: (ctx, txtCtrl, focus, onEditingComplete) {
        // _updateController(txtCtrl);
        if (widget.controller != null) {
          txtCtrl = widget.controller!;
        }

        if (widget.focusNode != null) {
          focus = widget.focusNode!;
        }

        return TextFormField(
            inputFormatters: widget.formatters,
            keyboardType: widget.textInputType,
            autofocus: false,
            focusNode: focus,
            autocorrect: true,
            textInputAction: widget.textInputAction ?? TextInputAction.next,
            validator: widget.validate,
            enabled: widget.enabled,
            onSaved: widget.onSaved,
            onFieldSubmitted: (_) => FocusScope.of(ctx).nextFocus(),
            onChanged: (val) async {
              if (widget.onAsyncSearch != null) {
                setState(() {
                  inSearch = true;
                });

                filtered = await widget.onAsyncSearch!(val);
              }

              if (widget.controller != null) {
                // Preserve o cursor ao atualizar o texto
                final cursorPosition = widget.controller!.selection;
                widget.controller!.value = widget.controller!.value.copyWith(
                  text: val,
                  selection: cursorPosition,
                );
              }

              if (widget.onChanged != null) {
                widget.onChanged!(val);
              }

              _checkTextInput(val);
              setState(() {
                inSearch = false;
              });
            },
            controller: txtCtrl,
            onEditingComplete: onEditingComplete,
            obscureText: !_isPwdVisible,
            readOnly: widget.readOnly,
            maxLines: widget.maxLines,
            textAlignVertical: TextAlignVertical.center,
            style: widget.textStyle ??
                TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: colors.text(80)),
            decoration: widget.inputDecoration ??
                InputDecoration(
                    //filled: true,
                    //fillColor: widget.backgroundColor ?? colors.primary(5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: colors.text(20))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: colors.primary())),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: colors.error()),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: colors.error(60)),
                    ),
                    prefixIcon: inSearch
                        ? Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: widget.height * .5,
                            height: widget.height * .5,
                            child: CircularProgressIndicator(
                              color: colors.primary(),
                              strokeWidth: 3,
                            ),
                          )
                        : !_isValid
                            ? Transform.scale(
                                scale: .5,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: colors.error(),
                                  child: Icon(
                                    Icons.priority_high,
                                    color: colors.surface(),
                                  ),
                                ),
                              )
                            : widget.prefixWidget,
                    suffixIcon: widget.suffixIcon ??
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (widget.isObscured)
                              IconButton(
                                onPressed: _changePwdVisible,
                                icon: Icon(
                                  _isPwdVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: colors.text(),
                                ),
                              ),
                            if (_isTextFilled)
                              Transform.scale(
                                scale: .5,
                                child: IconButton(
                                  onPressed: () {
                                    txtCtrl.clear();
                                    _clearTextInput();
                                    if (widget.onClearText != null) {
                                      widget.onClearText!();
                                    }
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: colors.text(),
                                  ),
                                ),
                              ),
                          ],
                        ),
                    hintStyle: AppTextStyles.body(context, fontSize: 16),
                    border: InputBorder.none,
                    hintText: widget.hintText));
      },
    );
  }

  Widget item({required String value, required Function(String) onSelect}) {
    return GestureDetector(
      child: Container(
        width: 90,
        margin: const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 5),
        padding: const EdgeInsets.all(10),
        color: Colors.transparent,
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: AppTextStyles.body(context),
        ),
      ),
      onTap: () => onSelect(value),
    );
  }
}
