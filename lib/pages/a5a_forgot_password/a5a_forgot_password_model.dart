import '/auth/firebase_auth/auth_util.dart';
import '/components/resetlink_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'a5a_forgot_password_widget.dart' show A5aForgotPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class A5aForgotPasswordModel extends FlutterFlowModel<A5aForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for resetEmail widget.
  FocusNode? resetEmailFocusNode;
  TextEditingController? resetEmailTextController;
  String? Function(BuildContext, String?)? resetEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resetEmailFocusNode?.dispose();
    resetEmailTextController?.dispose();
  }
}
