import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/core/networking/api_service.dart';
import 'package:docdoc_1/features/home/data/models/specialization_response_model.dart';

abstract class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);
  Future<ApiResult<SpecializationResponseModel>> getSpecializations();
}
