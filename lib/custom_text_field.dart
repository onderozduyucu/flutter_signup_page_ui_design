import 'package:flutter/material.dart';
import 'package:flutter_signup_page_ui_design/custom_widgets.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {this.changeIcon = const IconData(61866, fontFamily: 'MaterialIcons'),
      this.changeHint = 'Email Adress',
      this.changeObsure = false,
      Key? key})
      : super(key: key);

  final IconData? changeIcon;

  final String? changeHint;

  final bool changeObsure;

  @override
  State<CustomTextField> createState() {
    return _CustomTextFieldState();
  }
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController text = TextEditingController();

  TextEditingController text1 = TextEditingController();

  TextEditingController text2 = TextEditingController();

  TextEditingController text3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sWidth = MediaQuery.of(context).size.width;
    return CFlex(
      direction: Axis.horizontal,
      spacing: 0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CFlexSizedBox(
          flex: 1,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: const Color(0xfff3f4f6),
              hintText: widget.changeHint,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              filled: true,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: Color(0xff7c82a1),
                shadows: null,
                fontWeight: FontWeight.w600,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  left: sWidth * 0.04,
                  right: sWidth * 0.04,
                  top: 0,
                  bottom: 0,
                ),
                child: Icon(
                  widget.changeIcon,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            obscureText: widget.changeObsure,
            controller: text3,
          ),
        )
      ],
    );
  }
}
