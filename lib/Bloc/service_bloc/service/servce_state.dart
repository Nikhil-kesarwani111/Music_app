part of 'servce_bloc.dart';

abstract class ServiceState {}

class ServiceInitial extends ServiceState {}

class ServiceLoading extends ServiceState {}

class ServiceLoaded extends ServiceState {
  final String data; // Replace with your model

  ServiceLoaded(this.data);
}

class ServiceError extends ServiceState {
  final String message;

  ServiceError(this.message);
}
