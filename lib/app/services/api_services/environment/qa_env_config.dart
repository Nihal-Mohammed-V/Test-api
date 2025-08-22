
import 'config.dart';
import 'env_config.dart';

class QAEnvironmentConfig extends EnvConfig {
  @override
  String get baseUrl => ApiUrls.qaUrl + ApiUrls.prefix;

  @override
  String get validToken =>
      'Bearer I4YkRbf6sgbId8EdTzozsGEVFh@QiRHOALwrV(EsszrtS2eJYx727wH9*cc#o4ESxvDpp9y5ZNcAY7DuBb)Tz4fjtYL8a0YOqczs*1eIb(33bH#)TQUIvYAVeXh4AGoz2aO-iU(TV@y8m8seMkn@R1kNOPy*aNBx4ScaMX#9lAX9#Etz3vr2Kyg6b#ZK(0DwbzGmM1nYcv9bwNjbOPZ9pPeaEgw7hsx*cH3)ay7XGcEmPw9QMdasdaasdasdas';

  @override
  String get socketUrl => ApiUrls.qaUrl;

    @override
  String get label => 'QA';
}
