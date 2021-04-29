import 'dart:math';

import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../helpers/page.dart';
import '../helpers/qbutton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageContainer(Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                QButton("Parent Page", () => QR.to("/parent")),
                QButton("Parent Page -> Child", () => QR.to("/parent/child")),
                QButton(
                    "params /:id", () => QR.to("/${Random().nextInt(1000)}")),
                QButton(
                    "Query Params",
                    () => QR.to(
                        "/params?test=${Random().nextInt(1000)}&go=${Random().nextInt(1000)}")),
                QButton("Test not found Page", () => QR.to("/parent/no-child")),
                QButton("Add Remove Routes", () => QR.to("/add-remove-routes")),
                QButton("Nested Navigation", () => QR.to("/nested")),
                QButton("Declarative", () => QR.to("/declarative")),
                QButton("Overlays", () => QR.to("/overlays")),
              ],
            ))));
  }
}
