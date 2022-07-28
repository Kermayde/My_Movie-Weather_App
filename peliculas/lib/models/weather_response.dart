// To parse this JSON data, do
//
//     final weatherResponse = weatherResponseFromMap(jsonString);

import 'dart:convert';

class WeatherResponse {
    WeatherResponse({
        required this.location,
        required this.current,
        required this.forecast,
    });

    Location location;
    Current current;
    Forecast forecast;

    factory WeatherResponse.fromJson(String str) => WeatherResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory WeatherResponse.fromMap(Map<String, dynamic> json) => WeatherResponse(
        location: Location.fromMap(json["location"]),
        current: Current.fromMap(json["current"]),
        forecast: Forecast.fromMap(json["forecast"]),
    );

    Map<String, dynamic> toMap() => {
        "location": location.toMap(),
        "current": current.toMap(),
        "forecast": forecast.toMap(),
    };
}

class Current {
    Current({
        required this.lastUpdatedEpoch,
        required this.lastUpdated,
        required this.tempC,
        required this.tempF,
        required this.isDay,
        required this.condition,
        required this.windMph,
        required this.windKph,
        required this.windDegree,
        required this.windDir,
        required this.pressureMb,
        required this.pressureIn,
        required this.precipMm,
        required this.precipIn,
        required this.humidity,
        required this.cloud,
        required this.feelslikeC,
        required this.feelslikeF,
        required this.visKm,
        required this.visMiles,
        required this.uv,
        required this.gustMph,
        required this.gustKph,
    });

    int lastUpdatedEpoch;
    String lastUpdated;
    int tempC;
    double tempF;
    int isDay;
    Condition condition;
    double windMph;
    double windKph;
    int windDegree;
    String windDir;
    int pressureMb;
    double pressureIn;
    int precipMm;
    int precipIn;
    int humidity;
    int cloud;
    int feelslikeC;
    double feelslikeF;
    int visKm;
    int visMiles;
    int uv;
    double gustMph;
    int gustKph;

    factory Current.fromJson(String str) => Current.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Current.fromMap(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json["last_updated_epoch"],
        lastUpdated: json["last_updated"],
        tempC: json["temp_c"],
        tempF: json["temp_f"].toDouble(),
        isDay: json["is_day"],
        condition: Condition.fromMap(json["condition"]),
        windMph: json["wind_mph"].toDouble(),
        windKph: json["wind_kph"].toDouble(),
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressureMb: json["pressure_mb"],
        pressureIn: json["pressure_in"].toDouble(),
        precipMm: json["precip_mm"],
        precipIn: json["precip_in"],
        humidity: json["humidity"],
        cloud: json["cloud"],
        feelslikeC: json["feelslike_c"],
        feelslikeF: json["feelslike_f"].toDouble(),
        visKm: json["vis_km"],
        visMiles: json["vis_miles"],
        uv: json["uv"],
        gustMph: json["gust_mph"].toDouble(),
        gustKph: json["gust_kph"],
    );

    Map<String, dynamic> toMap() => {
        "last_updated_epoch": lastUpdatedEpoch,
        "last_updated": lastUpdated,
        "temp_c": tempC,
        "temp_f": tempF,
        "is_day": isDay,
        "condition": condition.toMap(),
        "wind_mph": windMph,
        "wind_kph": windKph,
        "wind_degree": windDegree,
        "wind_dir": windDir,
        "pressure_mb": pressureMb,
        "pressure_in": pressureIn,
        "precip_mm": precipMm,
        "precip_in": precipIn,
        "humidity": humidity,
        "cloud": cloud,
        "feelslike_c": feelslikeC,
        "feelslike_f": feelslikeF,
        "vis_km": visKm,
        "vis_miles": visMiles,
        "uv": uv,
        "gust_mph": gustMph,
        "gust_kph": gustKph,
    };
}

class Condition {
    Condition({
        required this.text,
        required this.icon,
        required this.code,
    });

    Text text;
    Icon icon;
    int code;

    factory Condition.fromJson(String str) => Condition.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Condition.fromMap(Map<String, dynamic> json) => Condition(
        text: json["text"],
        icon: json["icon"],
        code: json["code"],
    );

    Map<String, dynamic> toMap() => {
        "text": textValues.reverse[text],
        "icon": iconValues.reverse[icon],
        "code": code,
    };
}

enum Icon { CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_116_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_113_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_119_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_176_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_113_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_119_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_116_PNG, CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_176_PNG }

final iconValues = EnumValues({
    "//cdn.weatherapi.com/weather/64x64/day/113.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_113_PNG,
    "//cdn.weatherapi.com/weather/64x64/day/116.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_116_PNG,
    "//cdn.weatherapi.com/weather/64x64/day/119.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_119_PNG,
    "//cdn.weatherapi.com/weather/64x64/day/176.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_176_PNG,
    "//cdn.weatherapi.com/weather/64x64/night/113.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_113_PNG,
    "//cdn.weatherapi.com/weather/64x64/night/116.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_116_PNG,
    "//cdn.weatherapi.com/weather/64x64/night/119.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_119_PNG,
    "//cdn.weatherapi.com/weather/64x64/night/176.png": Icon.CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_176_PNG
});

enum Text { PARTLY_CLOUDY, SUNNY, CLOUDY, PATCHY_RAIN_POSSIBLE, CLEAR }

final textValues = EnumValues({
    "Clear": Text.CLEAR,
    "Cloudy": Text.CLOUDY,
    "Partly cloudy": Text.PARTLY_CLOUDY,
    "Patchy rain possible": Text.PATCHY_RAIN_POSSIBLE,
    "Sunny": Text.SUNNY
});

class Forecast {
    Forecast({
        required this.forecastday,
    });

    List<Forecastday> forecastday;

    factory Forecast.fromJson(String str) => Forecast.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Forecast.fromMap(Map<String, dynamic> json) => Forecast(
        forecastday: List<Forecastday>.from(json["forecastday"].map((x) => Forecastday.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "forecastday": List<dynamic>.from(forecastday.map((x) => x.toMap())),
    };
}

class Forecastday {
    Forecastday({
        required this.date,
        required this.dateEpoch,
        required this.day,
        required this.astro,
        required this.hour,
    });

    DateTime date;
    int dateEpoch;
    Day day;
    Astro astro;
    List<Hour> hour;

    factory Forecastday.fromJson(String str) => Forecastday.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Forecastday.fromMap(Map<String, dynamic> json) => Forecastday(
        date: DateTime.parse(json["date"]),
        dateEpoch: json["date_epoch"],
        day: Day.fromMap(json["day"]),
        astro: Astro.fromMap(json["astro"]),
        hour: List<Hour>.from(json["hour"].map((x) => Hour.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "date_epoch": dateEpoch,
        "day": day.toMap(),
        "astro": astro.toMap(),
        "hour": List<dynamic>.from(hour.map((x) => x.toMap())),
    };
}

class Astro {
    Astro({
        required this.sunrise,
        required this.sunset,
        required this.moonrise,
        required this.moonset,
        required this.moonPhase,
        required this.moonIllumination,
    });

    String sunrise;
    String sunset;
    String moonrise;
    String moonset;
    String moonPhase;
    String moonIllumination;

    factory Astro.fromJson(String str) => Astro.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Astro.fromMap(Map<String, dynamic> json) => Astro(
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        moonrise: json["moonrise"],
        moonset: json["moonset"],
        moonPhase: json["moon_phase"],
        moonIllumination: json["moon_illumination"],
    );

    Map<String, dynamic> toMap() => {
        "sunrise": sunrise,
        "sunset": sunset,
        "moonrise": moonrise,
        "moonset": moonset,
        "moon_phase": moonPhase,
        "moon_illumination": moonIllumination,
    };
}

class Day {
    Day({
        required this.maxtempC,
        required this.maxtempF,
        required this.mintempC,
        required this.mintempF,
        required this.avgtempC,
        required this.avgtempF,
        required this.maxwindMph,
        required this.maxwindKph,
        required this.totalprecipMm,
        required this.totalprecipIn,
        required this.avgvisKm,
        required this.avgvisMiles,
        required this.avghumidity,
        required this.dailyWillItRain,
        required this.dailyChanceOfRain,
        required this.dailyWillItSnow,
        required this.dailyChanceOfSnow,
        required this.condition,
        required this.uv,
    });

    double maxtempC;
    double maxtempF;
    double mintempC;
    double mintempF;
    double avgtempC;
    double avgtempF;
    double maxwindMph;
    double maxwindKph;
    double totalprecipMm;
    double totalprecipIn;
    int avgvisKm;
    int avgvisMiles;
    int avghumidity;
    int dailyWillItRain;
    int dailyChanceOfRain;
    int dailyWillItSnow;
    int dailyChanceOfSnow;
    Condition condition;
    int uv;

    factory Day.fromJson(String str) => Day.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Day.fromMap(Map<String, dynamic> json) => Day(
        maxtempC: json["maxtemp_c"].toDouble(),
        maxtempF: json["maxtemp_f"].toDouble(),
        mintempC: json["mintemp_c"].toDouble(),
        mintempF: json["mintemp_f"].toDouble(),
        avgtempC: json["avgtemp_c"].toDouble(),
        avgtempF: json["avgtemp_f"].toDouble(),
        maxwindMph: json["maxwind_mph"].toDouble(),
        maxwindKph: json["maxwind_kph"].toDouble(),
        totalprecipMm: json["totalprecip_mm"].toDouble(),
        totalprecipIn: json["totalprecip_in"].toDouble(),
        avgvisKm: json["avgvis_km"],
        avgvisMiles: json["avgvis_miles"],
        avghumidity: json["avghumidity"],
        dailyWillItRain: json["daily_will_it_rain"],
        dailyChanceOfRain: json["daily_chance_of_rain"],
        dailyWillItSnow: json["daily_will_it_snow"],
        dailyChanceOfSnow: json["daily_chance_of_snow"],
        condition: Condition.fromMap(json["condition"]),
        uv: json["uv"],
    );

    Map<String, dynamic> toMap() => {
        "maxtemp_c": maxtempC,
        "maxtemp_f": maxtempF,
        "mintemp_c": mintempC,
        "mintemp_f": mintempF,
        "avgtemp_c": avgtempC,
        "avgtemp_f": avgtempF,
        "maxwind_mph": maxwindMph,
        "maxwind_kph": maxwindKph,
        "totalprecip_mm": totalprecipMm,
        "totalprecip_in": totalprecipIn,
        "avgvis_km": avgvisKm,
        "avgvis_miles": avgvisMiles,
        "avghumidity": avghumidity,
        "daily_will_it_rain": dailyWillItRain,
        "daily_chance_of_rain": dailyChanceOfRain,
        "daily_will_it_snow": dailyWillItSnow,
        "daily_chance_of_snow": dailyChanceOfSnow,
        "condition": condition.toMap(),
        "uv": uv,
    };
}

class Hour {
    Hour({
        required this.timeEpoch,
        required this.time,
        required this.tempC,
        required this.tempF,
        required this.isDay,
        required this.condition,
        required this.windMph,
        required this.windKph,
        required this.windDegree,
        required this.windDir,
        required this.pressureMb,
        required this.pressureIn,
        required this.precipMm,
        required this.precipIn,
        required this.humidity,
        required this.cloud,
        required this.feelslikeC,
        required this.feelslikeF,
        required this.windchillC,
        required this.windchillF,
        required this.heatindexC,
        required this.heatindexF,
        required this.dewpointC,
        required this.dewpointF,
        required this.willItRain,
        required this.chanceOfRain,
        required this.willItSnow,
        required this.chanceOfSnow,
        required this.visKm,
        required this.visMiles,
        required this.gustMph,
        required this.gustKph,
        required this.uv,
    });

    int timeEpoch;
    String time;
    double tempC;
    double tempF;
    int isDay;
    Condition condition;
    double windMph;
    double windKph;
    int windDegree;
    String windDir;
    int pressureMb;
    double pressureIn;
    double precipMm;
    int precipIn;
    int humidity;
    int cloud;
    double feelslikeC;
    double feelslikeF;
    double windchillC;
    double windchillF;
    double heatindexC;
    double heatindexF;
    double dewpointC;
    double dewpointF;
    int willItRain;
    int chanceOfRain;
    int willItSnow;
    int chanceOfSnow;
    int visKm;
    int visMiles;
    double gustMph;
    double gustKph;
    int uv;

    factory Hour.fromJson(String str) => Hour.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Hour.fromMap(Map<String, dynamic> json) => Hour(
        timeEpoch: json["time_epoch"],
        time: json["time"],
        tempC: json["temp_c"].toDouble(),
        tempF: json["temp_f"].toDouble(),
        isDay: json["is_day"],
        condition: Condition.fromMap(json["condition"]),
        windMph: json["wind_mph"].toDouble(),
        windKph: json["wind_kph"].toDouble(),
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressureMb: json["pressure_mb"],
        pressureIn: json["pressure_in"].toDouble(),
        precipMm: json["precip_mm"].toDouble(),
        precipIn: json["precip_in"],
        humidity: json["humidity"],
        cloud: json["cloud"],
        feelslikeC: json["feelslike_c"].toDouble(),
        feelslikeF: json["feelslike_f"].toDouble(),
        windchillC: json["windchill_c"].toDouble(),
        windchillF: json["windchill_f"].toDouble(),
        heatindexC: json["heatindex_c"].toDouble(),
        heatindexF: json["heatindex_f"].toDouble(),
        dewpointC: json["dewpoint_c"].toDouble(),
        dewpointF: json["dewpoint_f"].toDouble(),
        willItRain: json["will_it_rain"],
        chanceOfRain: json["chance_of_rain"],
        willItSnow: json["will_it_snow"],
        chanceOfSnow: json["chance_of_snow"],
        visKm: json["vis_km"],
        visMiles: json["vis_miles"],
        gustMph: json["gust_mph"].toDouble(),
        gustKph: json["gust_kph"].toDouble(),
        uv: json["uv"],
    );

    Map<String, dynamic> toMap() => {
        "time_epoch": timeEpoch,
        "time": time,
        "temp_c": tempC,
        "temp_f": tempF,
        "is_day": isDay,
        "condition": condition.toMap(),
        "wind_mph": windMph,
        "wind_kph": windKph,
        "wind_degree": windDegree,
        "wind_dir": windDir,
        "pressure_mb": pressureMb,
        "pressure_in": pressureIn,
        "precip_mm": precipMm,
        "precip_in": precipIn,
        "humidity": humidity,
        "cloud": cloud,
        "feelslike_c": feelslikeC,
        "feelslike_f": feelslikeF,
        "windchill_c": windchillC,
        "windchill_f": windchillF,
        "heatindex_c": heatindexC,
        "heatindex_f": heatindexF,
        "dewpoint_c": dewpointC,
        "dewpoint_f": dewpointF,
        "will_it_rain": willItRain,
        "chance_of_rain": chanceOfRain,
        "will_it_snow": willItSnow,
        "chance_of_snow": chanceOfSnow,
        "vis_km": visKm,
        "vis_miles": visMiles,
        "gust_mph": gustMph,
        "gust_kph": gustKph,
        "uv": uv,
    };
}

class Location {
    Location({
        required this.name,
        required this.region,
        required this.country,
        required this.lat,
        required this.lon,
        required this.tzId,
        required this.localtimeEpoch,
        required this.localtime,
    });

    String name;
    String region;
    String country;
    double lat;
    double lon;
    String tzId;
    int localtimeEpoch;
    String localtime;

    factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Location.fromMap(Map<String, dynamic> json) => Location(
        name: json["name"],
        region: json["region"],
        country: json["country"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        tzId: json["tz_id"],
        localtimeEpoch: json["localtime_epoch"],
        localtime: json["localtime"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "region": region,
        "country": country,
        "lat": lat,
        "lon": lon,
        "tz_id": tzId,
        "localtime_epoch": localtimeEpoch,
        "localtime": localtime,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
