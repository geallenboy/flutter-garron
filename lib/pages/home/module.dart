class HomeModule {
  String name;
  String age;

  HomeModule({
    required this.name,
    required this.age,
  });

  factory HomeModule.fromJson(Map<String, dynamic> json) => HomeModule(
        name: json["name"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
      };
}
