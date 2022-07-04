Map<String, dynamic> toMapJson(Map map) => map.map((key, value) {
      if (value is Map) {
        value = toMapJson(value);
      }
      return MapEntry(key as String, value);
    }) ;
