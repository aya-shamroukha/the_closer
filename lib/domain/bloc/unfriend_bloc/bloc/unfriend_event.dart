// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'unfriend_bloc.dart';

 class UnfriendEvent extends Equatable {
  const UnfriendEvent();

  @override
  List<Object> get props => [];
}
// class GetUser extends UnfriendEvent {
// int  unf;
//   GetUser({
//     required this.unf,
//   });
//     @override
//   List<Object> get props => [unf];
// }
class UnAddFriend extends UnfriendEvent {
int id;
  UnAddFriend({
    required this.id,
  });

}
class AddFriend extends UnfriendEvent {
  int id;
  AddFriend({
    required this.id,
  });
}
