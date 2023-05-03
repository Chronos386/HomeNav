import 'dart:math';
import 'ble_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:home_nav/data/models/data_ble_sensor.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BleStorageImpl implements BleStorage {
  var bleScanner = GetIt.instance<FlutterReactiveBle>();
  List<String> availableNames = ['DavyFord_1', 'DavyFord_2', 'DavyFord_3',
    'DavyFord_4', 'DavyFord_5'];
  List<double> rssiMeter = [-62.829, -60.423, -63.427, -60, -60];
  List<double> doubleMeter = [2.6, 3.3, 2.95, -60, -60];//[3.4, 3.3, 2.95, -60, -60];

  @override
  Future<List<BleSensorData>> scan() async {
    var timer = Stopwatch();
    int sumRSSI = 0;
    int currentBLE = 0;
    int countOccurrences = 0;
    List<String> useNames = [];
    List<BleSensorData> bleList = [];
    timer.start();
    var subscription = bleScanner.scanForDevices(withServices: []);
    await for (final scanResult in subscription) {
      if(availableNames.contains(scanResult.name)) {
        if (countOccurrences == 0) {
          if (!useNames.contains(scanResult.name)) {
            countOccurrences++;
            useNames.add(scanResult.name);
            sumRSSI = scanResult.rssi;
          }
        } else {
          if (useNames[currentBLE] == scanResult.name) {
            countOccurrences++;
            sumRSSI += scanResult.rssi;
            if (countOccurrences == 30) {
              bleList.add(
                  BleSensorData(
                      id: int.parse(scanResult.name.substring(9)),
                      distance: pow(
                          10.0,
                          (rssiMeter[
                          int.parse(scanResult.name.substring(9))-1
                          ] - (sumRSSI / 30.0)) / (10 * doubleMeter[
                          int.parse(scanResult.name.substring(9))-1
                          ])).toDouble() * 100
                  )
              );
              countOccurrences = 0;
              currentBLE++;
            }
          }
        }
      }
      if ((currentBLE == 3) || (timer.elapsedMilliseconds/1000 > 30)) {
        break;
      }
    }
    return bleList;
  }
}