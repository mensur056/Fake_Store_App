import 'package:vexana/vexana.dart';

import '../model/product_model.dart';

abstract class IHomeService {
  late final INetworkManager _networkManager;

  IHomeService(INetworkManager networkManager)
      : _networkManager = networkManager;

  Future<List<ProductModel>?> fetchAllProducts({int count = 5});
}
