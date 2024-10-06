import '/flutter_flow/flutter_flow_util.dart';
import 'general_chat_widget.dart' show GeneralChatWidget;
import 'package:flutter/material.dart';

class GeneralChatModel extends FlutterFlowModel<GeneralChatWidget> {
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
