import 'package:docdoc_1/core/networking/api_error_handler.dart';
import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/core/networking/api_service.dart';
import 'package:docdoc_1/features/home/data/models/specialization_response_model.dart';
import 'package:docdoc_1/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService _apiService;
  HomeRepoImplementation(this._apiService);
  @override
  Future<ApiResult<SpecializationResponseModel>> getSpecializations() async {
    try {
      final result = await _apiService.getSpecializations();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.faliure(ErrorHandler.handle(error));
    }
  }
}
