enum Flavor { dev, prod }

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final String apiBaseUrl;

  static late FlavorConfig instance;

  FlavorConfig._internal(this.flavor, this.name, this.apiBaseUrl);

  factory FlavorConfig({
    required Flavor flavor,
    required String name,
    required String apiBaseUrl,
  }) {
    instance = FlavorConfig._internal(flavor, name, apiBaseUrl);
    return instance;
  }
}
