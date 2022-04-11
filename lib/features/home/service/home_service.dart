import 'package:vexana/vexana.dart';

import '../model/product_model.dart';

enum _HomeServicePath { products }

abstract class IHomeService {
  late final INetworkManager _networkManager;

  IHomeService(INetworkManager networkManager)
      : _networkManager = networkManager;

  Future<List<ProductModel>?> fetchAllProducts({int count = 5});
}

class HomeService extends IHomeService {
  HomeService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<ProductModel>?> fetchAllProducts({int count = 5})async {
    final response = await _networkManager.send<ProductModel, List<ProductModel>>(
        _HomeServicePath.products.name,
        parseModel: ProductModel(),
        method: RequestType.GET);
    return response.data;
  }
}
