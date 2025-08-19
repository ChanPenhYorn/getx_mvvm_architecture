enum Flavor {
  dev,
  staging,
  production,
}

class FlavorConfig {
  final Flavor flavor;
  final String apiBaseUrl;
  final String appName;

  FlavorConfig({
    required this.flavor,
    required this.apiBaseUrl,
    required this.appName,
  });

  static FlavorConfig instance =
      FlavorConfig._internal(Flavor.dev); // Default to dev

  FlavorConfig._internal(this.flavor)
      : apiBaseUrl = {
          Flavor.dev: 'https://api.dev.example.com',
          Flavor.staging: 'https://api.staging.example.com',
          Flavor.production: 'https://api.example.com',
        }[flavor]!,
        appName = {
          Flavor.dev: 'MyApp Dev',
          Flavor.staging: 'MyApp Staging',
          Flavor.production: 'MyApp Production',
        }[flavor]!;

  static void setFlavor(Flavor flavor) {
    instance = FlavorConfig._internal(flavor);
  }
}
