import 'package:flutter/material.dart';
import 'package:flutter_signup_page_ui_design/custom_text_field.dart';
import 'package:flutter_signup_page_ui_design/custom_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Padding(
          padding: EdgeInsets.only(
            left: sWidth * 0.05,
            right: sWidth * 0.05,
            top: sHeight * 0.02,
            bottom: sHeight * 0.02,
          ),
          child: CFlex(
            direction: Axis.vertical,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: CFlex(
                  direction: Axis.vertical,
                  spacing: 20,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            child: Text(
                              'Welcome to Nuntium 👋',
                              style: TextStyle(
                                  color: Color(0xff333647), fontSize: 24),
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            child: Text(
                              'Hello, I guess you are new around here. You can start using the application after sign up.',
                              style: TextStyle(
                                  color: Color(0xff7c82a1), fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 20,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            height: null,
                            child: CustomTextField(
                              changeHint: 'Username',
                              changeIcon:
                                  IconData(58504, fontFamily: 'MaterialIcons'),
                            ),
                          ),
                          CFlexSizedBox(
                            width: null,
                            height: null,
                            child: CustomTextField(
                              changeHint: 'Email Adress',
                            ),
                          ),
                          CFlexSizedBox(
                            width: null,
                            height: null,
                            child: CustomTextField(
                              changeIcon:
                                  IconData(60073, fontFamily: 'MaterialIcons'),
                              changeHint: 'Password',
                            ),
                          ),
                          CFlexSizedBox(
                            width: null,
                            height: null,
                            child: CustomTextField(
                              changeIcon:
                                  IconData(60073, fontFamily: 'MaterialIcons'),
                              changeHint: 'Repeat Password',
                            ),
                          )
                        ],
                      ),
                    ),
                    CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            height: sHeight * 0.07,
                            child: const CButton(
                              onPressed: null,
                              color: Color(0xff475ad7),
                              onLongPress: null,
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      flex: 1,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CFlexSizedBox(
                            height: null,
                            child: Text(
                              'Already have an account? Sign In\n',
                              style: TextStyle(
                                  color: Color(0xff333647), fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(),
        ),
      ),
    );
  }
}
