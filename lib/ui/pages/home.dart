import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furrl_demo/cubit/home_cubit.dart';
import 'package:furrl_demo/model/deal.dart';
import 'package:furrl_demo/model/stories.dart';
import 'package:furrl_demo/ui/widgets/circular_stories.dart';
import 'package:furrl_demo/ui/widgets/deals.dart';
import 'package:furrl_demo/ui/widgets/post.dart';
import 'package:furrl_demo/ui/widgets/swiper.dart';
import 'package:furrl_demo/ui/widgets/text_carousal.dart';
import 'package:furrl_demo/ui/widgets/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is HomeFetching) return const Center(child: CircularProgressIndicator(),);
        if(state is HomeFetchingFailed) return Center(child: Text(state.message),);
        if(state is HomeFetchingSuccessful){
          return ListView.builder(
              itemCount: state.response.data.length,
              itemBuilder: (BuildContext context, int index) {
                debugPrint(state.response.data[index].type);
                 switch(state.response.data[index].type){
                   case 'textCarousel':
                     return TextCarousal(stringList: state.response.data[index].data as List<String>);
                   case 'circularStories':
                     return CircularCategories(categories: state.response.data[index].data as List<Stories>);
                   case 'trending':
                     return TrendingCategories(categories: state.response.data[index].data as List<Stories>);
                   case 'deals':
                     return Deals(deals: state.response.data[index].data as List<Deal>);
                   case 'post':
                     return Post(postData: state.response.data[index].data[0] as Deal, name: state.response.data[index].name ?? '');
                   case 'swiper':
                     return CustomSwiper(swiperData: state.response.data[index].data as List<Deal>, name: state.response.data[index].name ?? '');
                    default:
                      return const SizedBox();
                }
              });
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
