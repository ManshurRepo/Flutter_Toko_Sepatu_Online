import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../common/constants/variables.dart';
import '../models/responses/products_response_model.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductsResponseModel>> getAllProduct() async {
    final response = await http
        .get(Uri.parse('${Variables.baseUrl}/api/products?populate=*'));
    print(response.statusCode);
    if (response.statusCode == 200) {
      return Right(ProductsResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}
