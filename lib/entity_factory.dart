import 'package:flutter_app/listben_entity.dart';
import 'package:flutter_app/mylistben_entity.dart';
import 'package:flutter_app/mynewslistben_entity.dart';
import 'package:flutter_app/newslistben_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "ListbenEntity") {
      return ListbenEntity.fromJson(json) as T;
    } else if (T.toString() == "MylistbenEntity") {
      return MylistbenEntity.fromJson(json) as T;
    } else if (T.toString() == "MynewslistbenEntity") {
      return MynewslistbenEntity.fromJson(json) as T;
    } else if (T.toString() == "NewslistbenEntity") {
      return NewslistbenEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}