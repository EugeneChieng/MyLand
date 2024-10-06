import '/components/bottomsheet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottomsheet component.
  late BottomsheetModel bottomsheetModel;

  @override
  void initState(BuildContext context) {
    bottomsheetModel = createModel(context, () => BottomsheetModel());
  }

  @override
  void dispose() {
    bottomsheetModel.dispose();
  }
}
