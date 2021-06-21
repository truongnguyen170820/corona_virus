
import 'package:corona_virus/model/api_model.dart';
import 'package:corona_virus/model/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final HomeRepository homeRepository;

  HomeController(this.homeRepository);
  Rx<ApiModel> data = Rx<ApiModel>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void fechDataFromApi() async{
    data.value = await homeRepository.getData();
    if(data.value == null){
      Get.snackbar("Error","Can't connect to server");
    }
  }
}