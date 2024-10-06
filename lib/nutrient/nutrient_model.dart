import '/flutter_flow/flutter_flow_util.dart';
import 'nutrient_widget.dart' show NutrientWidget;
import 'package:flutter/material.dart';

class NutrientModel extends FlutterFlowModel<NutrientWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
