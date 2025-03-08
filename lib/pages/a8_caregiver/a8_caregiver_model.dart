import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'a8_caregiver_widget.dart' show A8CaregiverWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class A8CaregiverModel extends FlutterFlowModel<A8CaregiverWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for carfname widget.
  FocusNode? carfnameFocusNode;
  TextEditingController? carfnameTextController;
  String? Function(BuildContext, String?)? carfnameTextControllerValidator;
  // State field(s) for carlname widget.
  FocusNode? carlnameFocusNode;
  TextEditingController? carlnameTextController;
  String? Function(BuildContext, String?)? carlnameTextControllerValidator;
  // State field(s) for cargender widget.
  FocusNode? cargenderFocusNode;
  TextEditingController? cargenderTextController;
  String? Function(BuildContext, String?)? cargenderTextControllerValidator;
  // State field(s) for carphno widget.
  FocusNode? carphnoFocusNode;
  TextEditingController? carphnoTextController;
  String? Function(BuildContext, String?)? carphnoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    carfnameFocusNode?.dispose();
    carfnameTextController?.dispose();

    carlnameFocusNode?.dispose();
    carlnameTextController?.dispose();

    cargenderFocusNode?.dispose();
    cargenderTextController?.dispose();

    carphnoFocusNode?.dispose();
    carphnoTextController?.dispose();
  }
}
