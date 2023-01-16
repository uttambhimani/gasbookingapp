import 'package:gasbookingapp/model_class.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{


  RxList<ModelData> gaslist =[
    ModelData(gasname: "Bharat Gas",gasimages: "assets/images/lpg3.jpg"),
    ModelData(gasname: "HP Gas",gasimages: "assets/images/lpg.jpg"),
    ModelData(gasname: "Indane Gas",gasimages: "assets/images/lpg2.jpg"),
  ].obs;


  RxList<ListModel> statehp=[
    ListModel(stats: "Assam",namber: "9666023456"),
    ListModel(stats: "Bihar",namber: "9085023456"),
    ListModel(stats: "Delhi & NCR",namber: "9470723456"),
    ListModel(stats: "Gujarat",namber: "9990923456"),
    ListModel(stats: "Haryana",namber: "9824423456"),
    ListModel(stats: "Himachal Pradesh",namber: "9812923456"),
    ListModel(stats: "J&K/Ladakh",namber: "9882023456"),
    ListModel(stats: "Jharkhand",namber: "9086023456"),
    ListModel(stats: "Kerala",namber: "9961023456"),
    ListModel(stats: "Karnataka",namber: "9964023456"),
    ListModel(stats: "Karnataka",namber: "8888823456"),
    ListModel(stats: "Maharashtra & Goa",namber: "9669023456"),
    ListModel(stats: "Madhya Pradesh & Chhattisgarh",namber: "9090923456"),
    ListModel(stats: "Odisha",namber: "9855623456"),
    ListModel(stats: "Punjab",namber: "98556 23456"),
    ListModel(stats: "Rajasthan",namber: "7891023456"),
    ListModel(stats: "Tamil Nadu",namber: "9092223456"),
    ListModel(stats: "Puducherry",namber: "9092223456"),
    ListModel(stats: "Uttar Pradesh",namber: "9889623456"),
    ListModel(stats: "Uttar Pradesh (W)",namber: "8191923456"),
    ListModel(stats: "West Bengal",namber: "9088823456"),
  ].obs;

  RxList<ListModel>bharatstets=[
    ListModel(stats: "ANDHRA PRADESH",namber: "9440156789"),
    ListModel(stats: "ASSAM",namber: "9401056789"),
    ListModel(stats: "ARUNACHAL PRADESH",namber: "9402056789"),
    ListModel(stats: "BIHAR",namber: "9473356789"),
    ListModel(stats: "CHANDIGARH",namber: "9478956789"),
    ListModel(stats: "CHATTISGARH",namber: "9407756789"),
    ListModel(stats: "DELHI",namber: "9868856789"),
    ListModel(stats: "DIU & DAMAN",namber: "9409056789"),
    ListModel(stats: "GOA",namber: "9420456789"),
    ListModel(stats: "GUJARAT",namber: "9409056789"),
    ListModel(stats: "HARYANA",namber: "9466456789"),
    ListModel(stats: "HIMACHAL PRADESH",namber: "9418856789"),
    ListModel(stats: "JAMMU & KASHMIRh",namber: "9419256789"),
    ListModel(stats: "JHARKHAND",namber: "9431156789"),
    ListModel(stats: "KERALA",namber: "9483356789"),
    ListModel(stats: "MADHYA PRADESH",namber: "9407456789"),
    ListModel(stats: "MAHARASTRA",namber: "9420456789"),
    ListModel(stats: "MANIPUR",namber: "9402056789"),
    ListModel(stats: "MEGHALAYA",namber: "9402156789"),
    ListModel(stats: "MIZORAM",namber: "9402156789"),
    ListModel(stats: "NAGALAND",namber: "9402056789"),
    ListModel(stats: "ORISSA",namber: "9439956789"),
    ListModel(stats: "PONDICHERY",namber: "9486056789"),
    ListModel(stats: "PUNJAB",namber: "9478956789"),
    ListModel(stats: "RAJASTHAN",namber: "9413456789"),
    ListModel(stats: "TAMILNADU",namber: "9486056789"),
    ListModel(stats: "TRIPURA",namber: "9402156789"),
    ListModel(stats: "UTTAR PRADESH (EASTERN)",namber: "9452456789"),
    ListModel(stats: "UTTAR PRADESH (WESTERN)",namber: "9457456789"),
    ListModel(stats: "UTTARAKHAND",namber: "9411156789"),
    ListModel(stats: "WEST BENGAL",namber: "9433056789"),
  ].obs;


  RxList<ListModel>indianstets=[
    ListModel(stats: "ANDHRA PRADESH",namber: "7718955555"),
    ListModel(stats: "ASSAM",namber: "7718955555"),
    ListModel(stats: "ARUNACHAL ",namber: "7718955555"),
    ListModel(stats: "BIHAR",namber: "7718955555"),
    ListModel(stats: "CHANDIGARH",namber: "7718955555"),
    ListModel(stats: "CHATTISGARH",namber: "7718955555"),
    ListModel(stats: "DELHI",namber: "7718955555"),
    ListModel(stats: "DIU & DAMAN",namber: "7718955555"),
    ListModel(stats: "GOA",namber: "7718955555"),
    ListModel(stats: "GUJARAT",namber: "7718955555"),
    ListModel(stats: "HARYANA",namber: "7718955555"),
    ListModel(stats: "HIMACHAL PRADESH",namber: "7718955555"),
    ListModel(stats: "JAMMU & KASHMIRh",namber: "7718955555"),
    ListModel(stats: "JHARKHAND",namber: "7718955555"),
    ListModel(stats: "KERALA",namber: "7718955555"),
    ListModel(stats: "MADHYA PRADESH",namber: "7718955555"),
    ListModel(stats: "MAHARASTRA",namber: "7718955555"),
    ListModel(stats: "MANIPUR",namber: "7718955555"),
    ListModel(stats: "MEGHALAYA",namber: "7718955555"),
    ListModel(stats: "MIZORAM",namber: "7718955555"),
    ListModel(stats: "NAGALAND",namber: "7718955555"),
    ListModel(stats: "ORISSA",namber: "7718955555"),
    ListModel(stats: "PONDICHERY",namber: "7718955555"),
    ListModel(stats: "PUNJAB",namber: "7718955555"),
    ListModel(stats: "RAJASTHAN",namber: "7718955555"),
    ListModel(stats: "TAMILNADU",namber: "7718955555"),
    ListModel(stats: "TRIPURA",namber: "7718955555"),
    ListModel(stats: "UTTAR PRADESH (EASTERN)",namber: "7718955555"),
    ListModel(stats: "UTTAR PRADESH (WESTERN)",namber: "7718955555"),
    ListModel(stats: "UTTARAKHAND",namber: "7718955555"),
    ListModel(stats: "WEST BENGAL",namber: "7718955555"),
  ].obs;

  List allbarand= [];
  ListModel? alldata;
  List<ListModel> clickdata = [];
  String? cliknamber;

}