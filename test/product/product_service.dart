import 'package:fake_store_app/features/home/service/home_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  late IHomeService homeService;
  setUp(() {
    homeService = HomeService(NetworkManager(
        options: BaseOptions(baseUrl: 'https://fakestoreapi.com/')));
  });
  test('fetchAllProducts - test five elements', () async {
    final response = await homeService.fetchAllProducts();
    expect(response, isNotEmpty);
  });
}
