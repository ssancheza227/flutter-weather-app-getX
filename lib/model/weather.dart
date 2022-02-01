// ignore_for_file: unnecessary_brace_in_string_interps

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromJson(dynamic json) {
    if (json == null) {
      return Weather();
    }

    return Weather(
        id: json['id'],
        main: json['main'],
        description: json['description'],
        icon: json['icon']);
  }

  @override
  String toString() {
    return 'Weather: {id: ${id}, main: ${main}, description: ${description}, icon:{$icon}}';
  }
}
