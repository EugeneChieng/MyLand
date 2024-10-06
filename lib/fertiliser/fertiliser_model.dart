import '/flutter_flow/flutter_flow_util.dart';
import 'fertiliser_widget.dart' show FertiliserWidget;
import 'package:flutter/material.dart';

class FertiliserModel extends FlutterFlowModel<FertiliserWidget> {
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
