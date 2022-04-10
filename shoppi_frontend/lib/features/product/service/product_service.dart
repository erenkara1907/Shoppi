import 'package:shoppi_frontend/core/service/base_service.dart';
import 'package:shoppi_frontend/core/service/shoppi_dio_service.dart';
import 'package:shoppi_frontend/features/product/model/product.dart';

class ProductService extends BaseService {
  Future<List<ProductModel>> fetchProducts() async {
    final response = await service.make<ProductModel>(serviceConstants.product,
        parserModel: ProductModel(), method: MethodType.GET);
    return response;
  }

  Future postProduct(ProductModel product) async {
    final response = await service.make(serviceConstants.product,
        parserModel: ProductModel(), data: product, method: MethodType.POST);
    return response;
  }
}
