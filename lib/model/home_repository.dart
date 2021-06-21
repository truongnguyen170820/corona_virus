
import 'package:corona_virus/model/api_model.dart';
import 'package:corona_virus/model/home_provider.dart';

class HomeRepository {
  HomeRepository(this.homeProvider);
  final HomeProvider homeProvider;

  Future<ApiModel> getData() async {
    return homeProvider.fetchData();
  }
}