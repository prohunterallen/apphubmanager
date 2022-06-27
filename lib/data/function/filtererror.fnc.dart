import 'package:flutter/material.dart';

convertErrorMsg(BuildContext context, dynamic err) {
  if (err.runtimeType == String) {
    return err.toString();
  } else if (err.runtimeType.toString() == '_TypeError') {
    return err.toString();
  } else if (err.runtimeType.toString() == '_CastError') {
    return err.toString();
  } else if (err.runtimeType.toString() == 'ProviderNotFoundException') {
    return err.toString();
  } else if (err.runtimeType.toString() == 'StateError') {
    return err.toString();
  } else {
    if (err?.message != null) {
      switch (err.message) {
        case "NOT_SET_PIN":
          return '"ยังไม่ระบุ PIN"';

        case "ACCOUNT_BLOCKED":
          return 'บัญชีนี้ถูกระงับ';

        case "ACCOUNT_NOT_FOUND":
          return "ไม่พบผู้ใช้งาน โปรดสมัครสมาชิก";

        case "CUSTOMER_NOT_FOUND":
          return "ไม่พบผู้ใช้งาน";

        case "ACCOUNT_ALREADY_EXISTS":
          return "บัญชีนี้ถูกใช้งานแล้ว";

        case "ACCOUNT_INVALID_BY_PROVIDER":
          return "การเชื่อมต่อบัญชีมีปัญหา";

        case "PHONE_NUMBER_DON_T_MATCH":
          return "เบอร์โทรศัพท์ไม่ตรงกัน";

        case "THIS_ACCOUNT_IS_CURRENTLY_IN_USE":
          return "บัญชีนี้กำลังใช้งานอยู่";

        case "INVALID_PROVIDER_TYPE":
          return "เชื่อมต่อบัญชีต้นทางผิดประเภท";

        case "STATUS_INVALID":
          return "สถานะผิดพลาด";

        case "ID_INVALID":
          return "รหัสนี้ไม่ถูกต้องหรือไม่รองรับ";

        case "INVALID_OTP":
          return "OTP ไม่ถูกต้อง";

        case "NOT_ALLOWED":
          return "OTP ไม่ถูกต้อง";

        case "Wait Expiration Date":
          return "ไม่อนุญาติให้ทำรายการ\nหรือคุณทำรายการซ้ำ";

        case "USERNAME_OR_PASSWORD_INVALID":
          return "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง";

        case "API_SERVER_DOWN":
          return "กำลังปรับปรุ่งเซอร์เวอร์";

        default:
          return "เกิดข้อผิดพลาดบางอย่าง";
      }
    } else {
      return err.error.toString();
    }
  }
}
