import 'package:shoppi_app/core/service/shoppi_dio_service.dart';
import 'package:shoppi_app/features/shop/model/product.dart';
import '../../../core/service/base_service.dart';

class ProductService extends BaseService {
  Future<List<Product>> fetchProducts() async {
    final response = await service.make<Product>(serviceConstants.product,
        parserModel: Product(), method: MethodType.GET);
    return response;
  }
}
