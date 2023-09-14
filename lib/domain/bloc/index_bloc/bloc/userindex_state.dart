part of 'userindex_bloc.dart';

sealed class UserindexState extends Equatable {
  const UserindexState();
  
  @override
  List<Object> get props => [];
}

final class UserindexInitial extends UserindexState {}
class LoadingState  extends UserindexState{}
class SuccessState extends UserindexState{
  final List<IndexModel>userindex;

   SuccessState( {required this.userindex});
    @override
  List<Object> get props => [userindex];
}