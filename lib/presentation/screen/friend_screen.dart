import 'package:fc_project/data/models/user_models/index_model.dart';
import 'package:fc_project/data/models/user_models/unfriend_model.dart';
import 'package:fc_project/data/service/user_service.dart';
import 'package:fc_project/domain/bloc/index_bloc/bloc/userindex_bloc.dart';
import 'package:fc_project/domain/bloc/unfriend_bloc/bloc/unfriend_bloc.dart';
import 'package:fc_project/presentation/const/colors.dart';
import 'package:fc_project/presentation/widget/mybutton.dart';
import 'package:fc_project/presentation/widget/mycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Friend extends StatelessWidget {
  const Friend({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserindexBloc(UserImpl())..add(Getindex()),
        ),
        BlocProvider(create: (context) => UnfriendBloc(UserImpl()))
      ],
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyContainer(
                    icon: Icon(Icons.search),
                  ),
                  Text('Friends',
                      style: TextStyle(
                          color: topTextcolor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            BlocBuilder<UserindexBloc, UserindexState>(
              builder: (context, state) {
                if (state is SuccessState) {
                  List<IndexModel> userindex = state.userindex;
                  return Expanded(
                    child: ListView.builder(
                        itemCount: userindex.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading:
                                  CircleAvatar(backgroundColor: firstcolor),
                              title: Text(userindex[index].username),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(userindex[index].role),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BlocListener<UnfriendBloc,
                                          UnfriendState>(
                                        listener: (context, stat) {
                                             
                                          if(stat is SuccessFriendState){
                                            
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                              backgroundColor: Colors.green,
                                               content: 
                                            Text('success')
                                            ));
                                          }else{
                                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                              backgroundColor: Colors.red,
                                               content: 
                                            Text('error')
                                            ));
                                          }
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            myButton(() {
                                             context.read<UnfriendBloc>().add(AddFriend(id:state.userindex[index].id ));
                                             print(state.userindex[index].id);
                                            }, 'Add friend', 60, 60),
                                            myButton(() {
                                                  context.read<UnfriendBloc>().add(UnAddFriend(id:state.userindex[index].id ));
                                            }, 'Cancel', 60, 60)
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          );
                        }),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        )),
      ),
    );
  }
}
