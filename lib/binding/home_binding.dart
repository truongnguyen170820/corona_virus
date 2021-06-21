
import 'package:corona_virus/controller/home_controller.dart';
import 'package:corona_virus/model/home_provider.dart';
import 'package:corona_virus/model/home_repository.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>((){
      final homeProvider = HomeProvider();
      final homeRepository = HomeRepository(homeProvider);
      return HomeController(homeRepository);
    });
    // TODO: implement dependencies
  }

}