import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furrl_demo/model/home_feed.dart';
import 'package:furrl_demo/repository/furrl_repo_interface.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final FurrlRepoInterface _furrlRepoInterface;
  HomeCubit(this._furrlRepoInterface) : super(HomeInitial()){
    _fetchData();
  }

  Future<void> _fetchData() async{
    try{
      emit(HomeFetching());
      Future.delayed(const Duration(seconds: 1), () async {
        final response = await _furrlRepoInterface.fetchHomePageDate();
        emit(HomeFetchingSuccessful(response: response));
      });
    }on Exception catch(e){
      emit(HomeFetchingFailed(message: e.toString()));
    }
  }
}
