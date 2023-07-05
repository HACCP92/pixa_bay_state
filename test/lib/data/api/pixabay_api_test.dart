import 'package:flutter_test/flutter_test.dart';
import 'package:pixa_bay_state/data/api/pixabay_api.dart';

void main() {
  test('pixabay api test', () async {
    final api = PixabayApi();
    final dto = await api.getImages('apple');
    expect(dto.total, 9264);
  });
}
