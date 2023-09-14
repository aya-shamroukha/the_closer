// ignore_for_file: prefer_const_constructors_in_immutables

part of 'unfriend_bloc.dart';

 class UnfriendState extends Equatable {
  const UnfriendState();
  
  @override
  List<Object> get props => [];
}

 class LoadingState extends UnfriendState {}
class SuccessFriendState extends UnfriendState{
  final List<UnFriendModel>friend;

   SuccessFriendState( {required this.friend});
    @override
  List<Object> get props => [friend];
}
