import 'package:equatable/equatable.dart';
import 'package:fc_project/data/models/user_models/index_model.dart';
import 'package:fc_project/data/service/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'userindex_event.dart';
part 'userindex_state.dart';

class UserindexBloc extends Bloc<UserindexEvent, UserindexState> {
    final UserImpl userimpl;

  UserindexBloc(this.userimpl) : super(LoadingState()) {
    //emit(LoadingState());
    on<Getindex>((event, emit) async{
             var userindex=await userimpl.index();
             List<IndexModel> finaldata = List.generate(userindex['data'].length, (index) => IndexModel.fromMap(userindex['data'][index]));
           emit(SuccessState( userindex: finaldata));


     
    });
  }
}
