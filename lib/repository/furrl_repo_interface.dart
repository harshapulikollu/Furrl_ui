import 'package:furrl_demo/model/home_feed.dart';

abstract class FurrlRepoInterface {
  Future<HomeFeed> fetchHomePageDate();
}