import 'package:equatable/equatable.dart';
import 'package:fc_project/data/models/user_models/friend_model.dart';
import 'package:fc_project/data/models/user_models/unfriend_model.dart';
import 'package:fc_project/data/service/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'unfriend_event.dart';
part 'unfriend_state.dart';

class UnfriendBloc extends Bloc<UnfriendEvent, UnfriendState> {
  final UserImpl _userimpl;
  UnfriendBloc(this._userimpl) : super(LoadingState()) {

    on<UnAddFriend>((event, emit)async {
       var friend=await _userimpl.unFriend(event.id);
              List<UnFriendModel> finaldata = List.generate(friend['data'].length, (index) => UnFriendModel.fromMap(friend['data'][index]));
           emit(SuccessFriendState( friend:finaldata ));

    });
    on<AddFriend>((event, emit)async {
       var friend=await _userimpl.Friend();
                     List<FriendModel> finaldata = List.generate(friend['data'].length, (index) => FriendModel.fromMap(friend['data'][index]));

           emit(SuccessFriendState( friend:friend ));


    });
  }
}
