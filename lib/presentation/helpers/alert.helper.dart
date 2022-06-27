import 'package:app_hub_manager/data/services/alert.service.dart';
import 'package:flutter/material.dart';

final alert = AlertService();

/// สำหรับแสดงในส่วนของ Notification ของ helper
extension AlertHelper on BuildContext {
  /// แจ้งเตือนข้อความด้างล่าง
  notify(String message,
      {Function()? onPressed,
      String label = "Close",
      NotifyType type = NotifyType.primary}) {
    alert.initialize(context: this, child: widget);
    alert.notify(message, onPressed: onPressed, label: label, type: type);
  }

  /// แจ้งเตือนเป็น Popup notify ออกมา
  Future<void> alertNotify(String content, [String? title]) {
    alert.initialize(context: this, child: widget);
    return alert.alertNotify(content, title);
  }

  /// แจ้งเตือนเป็น Popup confirm ออกมา
  Future<bool?> confirmNotify(String content, [String? title]) {
    alert.initialize(context: this, child: widget);
    return alert.confirmNotify(content, title);
  }

  Future<dynamic> detailNotify(Widget content, [String? title, Icon? icon]) {
    alert.initialize(context: this, child: widget);
    return alert.detailNotify(content, title, icon);
  }

  Future<void> showLoading() {
    alert.initialize(context: this, child: widget);
    return alert.loadingNotify();
  }
}
