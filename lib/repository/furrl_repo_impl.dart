import 'package:flutter/material.dart';
import 'package:furrl_demo/model/deal.dart';
import 'package:furrl_demo/model/home_feed.dart';
import 'package:furrl_demo/model/stories.dart';
import 'package:furrl_demo/repository/furrl_repo_interface.dart';
import 'package:furrl_demo/util/fake_home_api_data.dart';

class FurrlRepoImpl extends FurrlRepoInterface {

  @override
  Future<HomeFeed> fetchHomePageDate() async{
    try{
      HomeFeed hf = HomeFeed.fromJson(response);

      List<String> textCarouselData = [];
      List<Stories> circularStories = [];
      List<Stories> trending = [];
      List<Deal> deals  = [];
      List<Deal> swipers  = [];
      List<Deal> posts  = [];
      for (var element in hf.data) {
        if(element.type == 'textCarousel'){
          for (var el in element.data) {
            textCarouselData.add(el);
          }
          element.data = textCarouselData;
        }
        else if(element.type == 'circularStories'){
          for (var el in element.data) {
            circularStories.add(Stories.fromJson(el));
          }
          element.data = circularStories;
        }
        else if(element.type == 'trending'){
          for (var el in element.data) {
            trending.add(Stories.fromJson(el));
          }
          element.data = trending;
        }
        else if(element.type == 'deals'){
          for (var el in element.data) {
            deals.add(Deal.fromJson(el));
          }
          element.data = deals;
        }
        else if(element.type == 'swiper'){
          for (var el in element.data) {
            swipers.add(Deal.fromJson(el));
          }
          element.data = swipers;
        }
        else if(element.type == 'post'){
          for (var el in element.data) {
            posts.add(Deal.fromJson(el));
          }
          element.data = posts;
        }
      }

      return hf;
    }on Exception catch(e){
      rethrow;
    }
  }

}