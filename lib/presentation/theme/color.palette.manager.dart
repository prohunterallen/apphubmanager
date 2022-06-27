import 'package:flutter/material.dart';

class ColorManager {
  //tone/Neutral
  static Color tone900 = HexColor.fromHex('#212134');
  static Color tone800 = HexColor.fromHex('#32324D');
  static Color tone700 = HexColor.fromHex('#4A4A6A');
  static Color tone600 = HexColor.fromHex('#666687');
  static Color tone500 = HexColor.fromHex('#8E8EA9');
  static Color tone400 = HexColor.fromHex('#A5A5BA');
  static Color tone300 = HexColor.fromHex('#C0C0CF');
  static Color tone200 = HexColor.fromHex('#DCDCE4');
  static Color tone150 = HexColor.fromHex('#EAEAEF');
  static Color tone100 = HexColor.fromHex('#F6F6F9');
  static Color tone0 = HexColor.fromHex('#FFFFFF');
  //primary
  static Color primary700 = HexColor.fromHex('#2E7D32');
  static Color primary600 = HexColor.fromHex('#43A047');
  static Color primary500 = HexColor.fromHex('#66BB6A');
  static Color primary200 = HexColor.fromHex('#C8E6C9');
  static Color primary100 = HexColor.fromHex('#E8F5E9');
  //Secondary
  static Color secondary700 = HexColor.fromHex('#0277BD');
  static Color secondary600 = HexColor.fromHex('#039BE5');
  static Color secondary500 = HexColor.fromHex('#29B6F6');
  static Color secondary200 = HexColor.fromHex('#B3E5FC');
  static Color secondary100 = HexColor.fromHex('#E1F5FE');
  //Success/
  static Color success700 = HexColor.fromHex('#2F6846');
  static Color success600 = HexColor.fromHex('#328048');
  static Color success500 = HexColor.fromHex('#5CB176');
  static Color success200 = HexColor.fromHex('#C6F0C2');
  static Color success100 = HexColor.fromHex('#EAFBE7');
  //Danger
  static Color danger700 = HexColor.fromHex('#B72B1A');
  static Color danger600 = HexColor.fromHex('#D02B20');
  static Color danger500 = HexColor.fromHex('#EE5E52');
  static Color danger200 = HexColor.fromHex('#F5C0B8');
  static Color danger100 = HexColor.fromHex('#FCECEA');
  //Warning
  static Color warning700 = HexColor.fromHex('#BE5D01');
  static Color warning600 = HexColor.fromHex('#D9822F');
  static Color warning500 = HexColor.fromHex('#F29D41');
  static Color warning200 = HexColor.fromHex('#FAE7B9');
  static Color warning100 = HexColor.fromHex('#FDF4DC');
  //ALTERNATIVE
  static Color alt700 = HexColor.fromHex('#8312D1');
  static Color alt600 = HexColor.fromHex('#9736E8');
  static Color alt500 = HexColor.fromHex('#AC73E6');
  static Color alt200 = HexColor.fromHex('#E0C1F4');
  static Color alt100 = HexColor.fromHex('#F6ECFC');

  //
  static Color nearWhite = HexColor.fromHex('#DCDCE4');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
