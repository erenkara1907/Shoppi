import 'package:shoppi_app/core/service/shoppi_dio_service.dart';

part '../constants/service_constants.dart';

class BaseService {
  _ServiceConstants serviceConstants = _ServiceConstants.instance;
  ShoppiDioService service = ShoppiDioService.instance;
}