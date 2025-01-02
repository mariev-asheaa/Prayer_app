part of 'prayer_times_cubit.dart';

@immutable
sealed class PrayerTimesState {}

final class PrayerTimesInitial extends PrayerTimesState {}
final class PrayerTimesSuccess extends PrayerTimesState {
  PrayerModel prayerModel;
  PrayerTimesSuccess({required this.prayerModel});
}
final class PrayerTimesLoading extends PrayerTimesState {}
final class PrayerTimesFailure extends PrayerTimesState {
  String errormessage;
  PrayerTimesFailure({required this.errormessage});
}