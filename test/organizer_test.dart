import 'package:organizer/organizer.dart';
import 'package:test/test.dart';

void main() {
  test('dateToDirName', () {
    var dt = DateTime.fromMillisecondsSinceEpoch(612178377000);
    expect(dateToDirName(dt), '1989.05.26');
  });
}
