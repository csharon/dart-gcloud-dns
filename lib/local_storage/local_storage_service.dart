library dns_editor.local_storage.local_storage_service;

import 'package:angular/angular.dart';
import 'dart:html';
import 'dart:convert' show JSON;

@Injectable()
class LocalStorageService {

  void save(String key, data) {
    window.localStorage[key] = JSON.encode(data);
  }

  Object get(String key) {
    if (window.localStorage.containsKey(key)) {
      return JSON.decode(window.localStorage[key]);
    }
    return null;
  }

  void remove(key) {
    if (window.localStorage.containsKey(key)){
      window.localStorage.remove(key);
    }
  }

}