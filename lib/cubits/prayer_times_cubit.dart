import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:prayer/models/prayers_model.dart';
import 'package:prayer/services/prayers_time.dart';
part 'prayer_times_state.dart';

class PrayerTimesCubit extends Cubit<PrayerTimesState> {
  PrayerTimesCubit() : super(PrayerTimesInitial());

PrayerModel prayerModel=PrayerModel();
Future<void>prayertimes()async{
emit(PrayerTimesLoading());

  var responce=await getprayertimes();
     if(responce!=null){
        prayerModel=responce;
        emit(PrayerTimesSuccess(prayerModel: prayerModel));
          }
       else{
       emit(PrayerTimesFailure(errormessage: 'There was an error'));
         }
}}
