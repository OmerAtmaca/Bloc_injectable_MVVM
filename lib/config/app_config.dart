enum Env {
  dev,
  prod,
  stage,
}

abstract class AppConfig {
  Env get environment;

  String get baseUrl;

  String get baseImageUrl;

  String get baseVideoUrl;

  // String get mapApiKey;
}

class DevConfig extends AppConfig {
  @override
  Env get environment => Env.dev;

  @override
  String get baseUrl => "https://tofasspor-default-rtdb.firebaseio.com/";

  @override
  String get baseImageUrl => "https://tofasspor-default-rtdb.firebaseio.com/";

  @override
  String get baseVideoUrl => "https://tofasspor-default-rtdb.firebaseio.com/";

  // @override
  // String get mapApiKey => "AIzaSyAc-GuL-uUETZ2AOREZSA8-T7zIMV9PdNE";
}
