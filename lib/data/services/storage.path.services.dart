import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class PathStorageService {
  Future<String> getFilePath() async {
    io.Directory appDocumentsDirectory =
        await getApplicationDocumentsDirectory(); // 1
    String appDocumentsPath = appDocumentsDirectory.path; // 2
    // String filePath = '$appDocumentsPath/demoTextFile.txt'; // 3
    String filePath = '$appDocumentsPath/'; // 3

    return filePath;
  }
}
