class PrayerModel {
  PrayerModel({
      this.code,
      this.status,
      this.data,});

  PrayerModel.fromJson(dynamic json) {
    code = json['code'];
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  num? code;
  String? status;
  List<Data>? data;
PrayerModel copyWith({  num? code,
  String? status,
  List<Data>? data,
}) => PrayerModel(  code: code ?? this.code,
  status: status ?? this.status,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.timings, 
      this.date, 
      this.meta,});

  Data.fromJson(dynamic json) {
    timings = json['timings'] != null ? Timings.fromJson(json['timings']) : null;
    date = json['date'] != null ? Date.fromJson(json['date']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  Timings? timings;
  Date? date;
  Meta? meta;
Data copyWith({  Timings? timings,
  Date? date,
  Meta? meta,
}) => Data(  timings: timings ?? this.timings,
  date: date ?? this.date,
  meta: meta ?? this.meta,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (timings != null) {
      map['timings'] = timings?.toJson();
    }
    if (date != null) {
      map['date'] = date?.toJson();
    }
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    return map;
  }

}

class Meta {
  Meta({
      this.latitude, 
      this.longitude, 
      this.timezone, 
      this.method, 
      this.latitudeAdjustmentMethod, 
      this.midnightMode, 
      this.school, 
      this.offset,});

  Meta.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    timezone = json['timezone'];
    method = json['method'] != null ? Method.fromJson(json['method']) : null;
    latitudeAdjustmentMethod = json['latitudeAdjustmentMethod'];
    midnightMode = json['midnightMode'];
    school = json['school'];
    offset = json['offset'] != null ? Offset.fromJson(json['offset']) : null;
  }
  num? latitude;
  num? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Offset? offset;
Meta copyWith({  num? latitude,
  num? longitude,
  String? timezone,
  Method? method,
  String? latitudeAdjustmentMethod,
  String? midnightMode,
  String? school,
  Offset? offset,
}) => Meta(  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
  timezone: timezone ?? this.timezone,
  method: method ?? this.method,
  latitudeAdjustmentMethod: latitudeAdjustmentMethod ?? this.latitudeAdjustmentMethod,
  midnightMode: midnightMode ?? this.midnightMode,
  school: school ?? this.school,
  offset: offset ?? this.offset,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['timezone'] = timezone;
    if (method != null) {
      map['method'] = method?.toJson();
    }
    map['latitudeAdjustmentMethod'] = latitudeAdjustmentMethod;
    map['midnightMode'] = midnightMode;
    map['school'] = school;
    if (offset != null) {
      map['offset'] = offset?.toJson();
    }
    return map;
  }

}

class Offset {
  Offset({
      this.imsak, 
      this.fajr, 
      this.sunrise, 
      this.dhuhr, 
      this.asr, 
      this.maghrib, 
      this.sunset, 
      this.isha, 
      this.midnight,});

  Offset.fromJson(dynamic json) {
    imsak = json['Imsak'];
    fajr = json['Fajr'];
    sunrise = json['Sunrise'];
    dhuhr = json['Dhuhr'];
    asr = json['Asr'];
    maghrib = json['Maghrib'];
    sunset = json['Sunset'];
    isha = json['Isha'];
    midnight = json['Midnight'];
  }
  num? imsak;
  num? fajr;
  num? sunrise;
  num? dhuhr;
  num? asr;
  num? maghrib;
  num? sunset;
  num? isha;
  num? midnight;
Offset copyWith({  num? imsak,
  num? fajr,
  num? sunrise,
  num? dhuhr,
  num? asr,
  num? maghrib,
  num? sunset,
  num? isha,
  num? midnight,
}) => Offset(  imsak: imsak ?? this.imsak,
  fajr: fajr ?? this.fajr,
  sunrise: sunrise ?? this.sunrise,
  dhuhr: dhuhr ?? this.dhuhr,
  asr: asr ?? this.asr,
  maghrib: maghrib ?? this.maghrib,
  sunset: sunset ?? this.sunset,
  isha: isha ?? this.isha,
  midnight: midnight ?? this.midnight,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Imsak'] = imsak;
    map['Fajr'] = fajr;
    map['Sunrise'] = sunrise;
    map['Dhuhr'] = dhuhr;
    map['Asr'] = asr;
    map['Maghrib'] = maghrib;
    map['Sunset'] = sunset;
    map['Isha'] = isha;
    map['Midnight'] = midnight;
    return map;
  }

}

class Method {
  Method({
      this.id, 
      this.name, 
      this.params, 
      this.location,});

  Method.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    params = json['params'] != null ? Params.fromJson(json['params']) : null;
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
  }
  num? id;
  String? name;
  Params? params;
  Location? location;
Method copyWith({  num? id,
  String? name,
  Params? params,
  Location? location,
}) => Method(  id: id ?? this.id,
  name: name ?? this.name,
  params: params ?? this.params,
  location: location ?? this.location,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (params != null) {
      map['params'] = params?.toJson();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    return map;
  }

}

class Location {
  Location({
      this.latitude, 
      this.longitude,});

  Location.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
  num? latitude;
  num? longitude;
Location copyWith({  num? latitude,
  num? longitude,
}) => Location(  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

}

class Params {
  Params({
      this.fajr, 
      this.isha,});

  Params.fromJson(dynamic json) {
    fajr = json['Fajr'];
    isha = json['Isha'];
  }
  num? fajr;
  String? isha;
Params copyWith({  num? fajr,
  String? isha,
}) => Params(  fajr: fajr ?? this.fajr,
  isha: isha ?? this.isha,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Fajr'] = fajr;
    map['Isha'] = isha;
    return map;
  }

}

class Date {
  Date({
      this.readable, 
      this.timestamp, 
      this.gregorian, 
      this.hijri,});

  Date.fromJson(dynamic json) {
    readable = json['readable'];
    timestamp = json['timestamp'];
    gregorian = json['gregorian'] != null ? Gregorian.fromJson(json['gregorian']) : null;
    hijri = json['hijri'] != null ? Hijri.fromJson(json['hijri']) : null;
  }
  String? readable;
  String? timestamp;
  Gregorian? gregorian;
  Hijri? hijri;
Date copyWith({  String? readable,
  String? timestamp,
  Gregorian? gregorian,
  Hijri? hijri,
}) => Date(  readable: readable ?? this.readable,
  timestamp: timestamp ?? this.timestamp,
  gregorian: gregorian ?? this.gregorian,
  hijri: hijri ?? this.hijri,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['readable'] = readable;
    map['timestamp'] = timestamp;
    if (gregorian != null) {
      map['gregorian'] = gregorian?.toJson();
    }
    if (hijri != null) {
      map['hijri'] = hijri?.toJson();
    }
    return map;
  }

}

class Hijri {
  Hijri({
      this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation,
      this.holidays,
      this.method,});

  Hijri.fromJson(dynamic json) {
    date = json['date'];
    format = json['format'];
    day = json['day'];
    weekday = json['weekday'] != null ? Weekday.fromJson(json['weekday']) : null;
    month = json['month'] != null ? Month.fromJson(json['month']) : null;
    year = json['year'];
    designation = json['designation'] != null ? Designation.fromJson(json['designation']) : null;
    if (json['holidays'] != null) {
      holidays = [];
      json['holidays'].forEach((v) {
      //  holidays?.add(Dynamic.fromJson(v));
      });
    }
    method = json['method'];
  }
  String? date;
  String? format;
  num? day;
  Weekday? weekday;
  Month? month;
  num? year;
  Designation? designation;
  List<dynamic>? holidays;
  String? method;
Hijri copyWith({  String? date,
  String? format,
  num? day,
  Weekday? weekday,
  Month? month,
  num? year,
  Designation? designation,
  List<dynamic>? holidays,
  String? method,
}) => Hijri(  date: date ?? this.date,
  format: format ?? this.format,
  day: day ?? this.day,
  weekday: weekday ?? this.weekday,
  month: month ?? this.month,
  year: year ?? this.year,
  designation: designation ?? this.designation,
  holidays: holidays ?? this.holidays,
  method: method ?? this.method,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['format'] = format;
    map['day'] = day;
    if (weekday != null) {
      map['weekday'] = weekday?.toJson();
    }
    if (month != null) {
      map['month'] = month?.toJson();
    }
    map['year'] = year;
    if (designation != null) {
      map['designation'] = designation?.toJson();
    }
    if (holidays != null) {
      map['holidays'] = holidays?.map((v) => v.toJson()).toList();
    }
    map['method'] = method;
    return map;
  }

}


class Designation {
  Designation({
      this.abbreviated, 
      this.expanded,});

  Designation.fromJson(dynamic json) {
    abbreviated = json['abbreviated'];
    expanded = json['expanded'];
  }
  String? abbreviated;
  String? expanded;
Designation copyWith({  String? abbreviated,
  String? expanded,
}) => Designation(  abbreviated: abbreviated ?? this.abbreviated,
  expanded: expanded ?? this.expanded,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['abbreviated'] = abbreviated;
    map['expanded'] = expanded;
    return map;
  }

}

class Month {
  Month({
      this.number, 
      this.en, 
      this.ar, 
      this.days,});

  Month.fromJson(dynamic json) {
    number = json['number'];
    en = json['en'];
    ar = json['ar'];
    days = json['days'];
  }
  num? number;
  String? en;
  String? ar;
  num? days;
Month copyWith({  num? number,
  String? en,
  String? ar,
  num? days,
}) => Month(  number: number ?? this.number,
  en: en ?? this.en,
  ar: ar ?? this.ar,
  days: days ?? this.days,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['en'] = en;
    map['ar'] = ar;
    map['days'] = days;
    return map;
  }

}

class Weekday {
  Weekday({
      this.en, 
      this.ar,});

  Weekday.fromJson(dynamic json) {
    en = json['en'];
    ar = json['ar'];
  }
  String? en;
  String? ar;
Weekday copyWith({  String? en,
  String? ar,
}) => Weekday(  en: en ?? this.en,
  ar: ar ?? this.ar,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = en;
    map['ar'] = ar;
    return map;
  }

}

class Gregorian {
  Gregorian({
      this.date, 
      this.format, 
      this.day, 
      this.weekday, 
      this.month, 
      this.year, 
      this.designation,});

  Gregorian.fromJson(dynamic json) {
    date = json['date'];
    format = json['format'];
    day = json['day'];
    weekday = json['weekday'] != null ? Weekday.fromJson(json['weekday']) : null;
    month = json['month'] != null ? Month.fromJson(json['month']) : null;
    year = json['year'];
    designation = json['designation'] != null ? Designation.fromJson(json['designation']) : null;
  }
  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;
Gregorian copyWith({  String? date,
  String? format,
  String? day,
  Weekday? weekday,
  Month? month,
  String? year,
  Designation? designation,
}) => Gregorian(  date: date ?? this.date,
  format: format ?? this.format,
  day: day ?? this.day,
  weekday: weekday ?? this.weekday,
  month: month ?? this.month,
  year: year ?? this.year,
  designation: designation ?? this.designation,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['format'] = format;
    map['day'] = day;
    if (weekday != null) {
      map['weekday'] = weekday?.toJson();
    }
    if (month != null) {
      map['month'] = month?.toJson();
    }
    map['year'] = year;
    if (designation != null) {
      map['designation'] = designation?.toJson();
    }
    return map;
  }

}

class Timings {
  Timings({
      this.fajr, 
      this.sunrise, 
      this.dhuhr, 
      this.asr, 
      this.sunset, 
      this.maghrib, 
      this.isha, 
      this.imsak, 
      this.midnight, 
      this.firstthird, 
      this.lastthird,});

  Timings.fromJson(dynamic json) {
    fajr = json['Fajr'];
    sunrise = json['Sunrise'];
    dhuhr = json['Dhuhr'];
    asr = json['Asr'];
    sunset = json['Sunset'];
    maghrib = json['Maghrib'];
    isha = json['Isha'];
    imsak = json['Imsak'];
    midnight = json['Midnight'];
    firstthird = json['Firstthird'];
    lastthird = json['Lastthird'];
  }
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;
Timings copyWith({  String? fajr,
  String? sunrise,
  String? dhuhr,
  String? asr,
  String? sunset,
  String? maghrib,
  String? isha,
  String? imsak,
  String? midnight,
  String? firstthird,
  String? lastthird,
}) => Timings(  fajr: fajr ?? this.fajr,
  sunrise: sunrise ?? this.sunrise,
  dhuhr: dhuhr ?? this.dhuhr,
  asr: asr ?? this.asr,
  sunset: sunset ?? this.sunset,
  maghrib: maghrib ?? this.maghrib,
  isha: isha ?? this.isha,
  imsak: imsak ?? this.imsak,
  midnight: midnight ?? this.midnight,
  firstthird: firstthird ?? this.firstthird,
  lastthird: lastthird ?? this.lastthird,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Fajr'] = fajr;
    map['Sunrise'] = sunrise;
    map['Dhuhr'] = dhuhr;
    map['Asr'] = asr;
    map['Sunset'] = sunset;
    map['Maghrib'] = maghrib;
    map['Isha'] = isha;
    map['Imsak'] = imsak;
    map['Midnight'] = midnight;
    map['Firstthird'] = firstthird;
    map['Lastthird'] = lastthird;
    return map;
  }

}