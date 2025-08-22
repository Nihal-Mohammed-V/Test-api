import 'qa_env_config.dart';
import 'staging_env_config.dart';
import 'production_env_config.dart';

enum Env { production, staging, qa }

abstract class EnvConfig {
  String get baseUrl;
  String get socketUrl;
  String get validToken;
  String get label;
}

class EnvConfiguration {
  static final EnvConfiguration _instance = EnvConfiguration._internal();
  late final EnvConfig _config;

  factory EnvConfiguration() {
    return _instance;
  }

  EnvConfiguration._internal();
  void init(Env env) {
    if (env == Env.staging) {
      _config = StagingEnvironmentConfig();
    } else if (env == Env.production) {
      _config = ProductionEnvironmentConfig();
    } else {
      _config = QAEnvironmentConfig();
    }
  }

  static EnvConfig get current => _instance._config;
}
