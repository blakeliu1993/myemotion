/// wrap permission_handler to check and request permissions, such as storage permission for file ops, camera permission for emotion recognition, etc.

import 'package:permission_handler/permission_handler.dart';

class CustomPermissionHandler {
  static final CustomPermissionHandler _internal =
      CustomPermissionHandler._internalInit();

  factory CustomPermissionHandler() {
    return _internal;
  }

  CustomPermissionHandler._internalInit();
}
