import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'a_meddoctor_widget.dart' show AMeddoctorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AMeddoctorModel extends FlutterFlowModel<AMeddoctorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for doctorname widget.
  FocusNode? doctornameFocusNode;
  TextEditingController? doctornameTextController;
  String? Function(BuildContext, String?)? doctornameTextControllerValidator;
  // State field(s) for specialization widget.
  FocusNode? specializationFocusNode;
  TextEditingController? specializationTextController;
  String? Function(BuildContext, String?)?
      specializationTextControllerValidator;
  // State field(s) for hospital widget.
  FocusNode? hospitalFocusNode;
  TextEditingController? hospitalTextController;
  String? Function(BuildContext, String?)? hospitalTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    doctornameFocusNode?.dispose();
    doctornameTextController?.dispose();

    specializationFocusNode?.dispose();
    specializationTextController?.dispose();

    hospitalFocusNode?.dispose();
    hospitalTextController?.dispose();
  }
}
