import 'package:hashids2/hashids2.dart';

class GenetateHashId {
  final hashids = HashIds(
      alphabet: "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
      salt: "justrandomsaltnooneknow",
      minHashLength: 5);
  String generateOne(int index) {
    return hashids.encodeInt(index);
  }

  List<String> generateFrom(int index, int count) {
    return List.generate(count, (i) => i + index)
        .map((e) => hashids.encodeInt(e))
        .toList();
  }
}
