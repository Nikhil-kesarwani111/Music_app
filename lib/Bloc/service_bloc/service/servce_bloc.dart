import 'package:flutter_bloc/flutter_bloc.dart';

part 'servce_event.dart';
part 'servce_state.dart';


class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc() : super(ServiceInitial()) {
    on<FetchServiceData>((event, emit) async {
      emit(ServiceLoading());

      try {
        await Future.delayed(Duration(seconds: 2)); // simulate API call
        final fetchedData = "Here is your data";
        emit(ServiceLoaded(fetchedData));
      } catch (e) {
        emit(ServiceError("Failed to fetch data"));
      }
    });
  }
}
