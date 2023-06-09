import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furrl_demo/cubit/home_cubit.dart';
import 'package:furrl_demo/cubit/root_nav_cubit.dart';
import 'package:furrl_demo/repository/furrl_repo_impl.dart';
import 'package:furrl_demo/ui/pages/home.dart';
import 'package:furrl_demo/util/colors.dart';
import 'package:iconly/iconly.dart';

class RootNavPage extends StatelessWidget {
  const RootNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.bgGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text('Furrl', style: TextStyle(color: UiColors.purple, fontSize: 24.0),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(IconlyLight.search, color: Colors.black,),),
          IconButton(onPressed: (){}, icon: const Icon(IconlyLight.bookmark, color: Colors.black,),),
          IconButton(onPressed: (){}, icon: const Icon(IconlyLight.bag, color: Colors.black,),),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.read<RootNavCubit>().pageController,
        onPageChanged: (index) {
          context.read<RootNavCubit>().onPageChanged(index);
        },
        children: <Widget>[
          BlocProvider(create: (context) => HomeCubit(FurrlRepoImpl()), child: const HomePage(),),
          const Text("Not Implemented"),
          const Text("Not Implemented"),
          const Text("Not Implemented"),
        ],
      ),
      bottomNavigationBar:  BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: context.read<RootNavCubit>().bottomBarSelectedIndex,
        onTap: (int index){
          context.read<RootNavCubit>().onPageChanged(index);
        },
        items: const [
           BottomNavigationBarItem(
              icon: Icon(IconlyLight.home, color: Colors.black,),
             label:'Home'
          ),
          BottomNavigationBarItem(
            icon:  Icon(IconlyLight.star, color: Colors.black,),
              label:'Vibes'
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.discovery, color: Colors.black,),
              label:'Categories'
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.user, color: Colors.black,),
              label:'Profile'
          ),
        ]),
    );
  }
}
