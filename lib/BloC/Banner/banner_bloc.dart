import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Model_Classes/BannerModel.dart';
import 'package:nectar/Repository/Banner_Api.dart';

part 'banner_event.dart';

part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  BannerApi bannerApi = BannerApi();
  late BannerModel bannerModel;

  BannerBloc() : super(BannerInitial()) {
    on<FetchBanner>((event, emit) async {
      emit(BannerLoading());
      try {
        bannerModel = await bannerApi.getBanner();
        emit(BannerLoaded());
      } catch (e) {
        print(e);
        emit(BannerError());
      }
    });
  }
}
