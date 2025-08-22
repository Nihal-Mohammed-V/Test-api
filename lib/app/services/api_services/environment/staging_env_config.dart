import 'config.dart';
import 'env_config.dart';

class StagingEnvironmentConfig extends EnvConfig {
  @override
  String get baseUrl => ApiUrls.stagingUrl + ApiUrls.prefix;

  @override
  String get validToken =>
      'Bearer I4YkRbf6sgbId8EdTzozsGEVFh@QiRHOALwrV(EsszrtS2eJYx727wH9*cc#o4ESxvDpp9y5ZNcAY7DuBb)Tz4fjtYL8a0YOqczs*1eIb(33bH#)TQUIvYAVeXh4AGoz2aO-iU(TV@y8m8seMkn@R1kNOPy*aNBx4ScaMX#9lAX9#Etz3vr2Kyg6b#ZK(0DwbzGmM1nYcv9bwNjbOPZ9pPeaEgw7hsx*cH3)ay7XGcEmPw9QMdasdaasdasdas';

  @override
  String get socketUrl => ApiUrls.stagingUrl;

  @override
  String get label => 'Staging';
}
