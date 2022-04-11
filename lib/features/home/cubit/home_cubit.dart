import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fake_store_app/features/home/service/home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeService) : super(HomeInitial());
  final IHomeService homeService;
}
