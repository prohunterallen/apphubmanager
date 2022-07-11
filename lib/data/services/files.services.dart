import 'package:app_hub_manager/data/services/storage.path.services.dart';
import 'package:dio/dio.dart';
import 'dart:io' as io;

import 'package:flutter/foundation.dart';

class FilesService {
  final _pathService = PathStorageService();

  final BaseOptions _options = BaseOptions(
      baseUrl: "http://io.avesta.co.th/apphub",
      connectTimeout: 3000,
      receiveTimeout: 3000);

  Dio dio = Dio();

  // String? urlOfFileToDownload;
  // String? filename;
  // //  final String dir =

  Future downloadFile(String url, String fileName) async {
    try {
      dio = Dio(_options);
      final savepath = await _pathService.getFilePath();
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      if (kDebugMode) {
        print(response.headers);
      }
      io.File file = io.File(savepath + fileName);
      var raf = file.openSync(mode: io.FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
    } catch (err) {
      rethrow;
    }
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }

  Future<void> installAPKs() async {}
}
