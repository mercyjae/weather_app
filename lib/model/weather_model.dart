class WeatherModel{
  final String? city;
  final String? country;
  final String? description;
  final String? temperature;
  final String? humidity;
  final String? windSpeed;
  final String? windDirection;
  final String? pressure;
  final String? icon;
  final String? feelsLike;

  WeatherModel({
    this.city,
    this.country,
    this.description,
    this.temperature,
    this.humidity,
    this.windSpeed,
    this.windDirection,
    this.pressure,
    this.icon,
    this.feelsLike,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json){
    return WeatherModel(
      city: json['name'],
      country: json['sys']['country'],
      description: json['weather'][0]['description'],
      temperature: json['main']['temp'].toString(),
      humidity: json['main']['humidity'].toString(),
      windSpeed: json['wind']['speed'].toString(),
      windDirection: json['wind']['deg'].toString(),
      pressure: json['main']['pressure'].toString(),
      icon: json['weather'][0]['icon'],
      feelsLike: json['main']['feels_like'].toString(),
    );
  }
}
