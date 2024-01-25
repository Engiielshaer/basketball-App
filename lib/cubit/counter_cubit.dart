
import 'package:basket_app/cubit/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterCubit extends Cubit<counterstate>
{
  counterCubit():super(counterAstate());

  int pointteamA=0;
  int pointteamB=0;
  void TeamIncrement({required String team, required int buttonNumber})
  {
    if(team=='A')
    {
      pointteamA+=buttonNumber;
      emit(counterAstate());
    }else
      {
        pointteamB+=buttonNumber;
        emit(counterBstate());
      }
  }
}