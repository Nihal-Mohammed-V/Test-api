import 'config.dart';
import 'env_config.dart';

class ProductionEnvironmentConfig extends EnvConfig {
  @override
  String get baseUrl => ApiUrls.productionUrl + ApiUrls.prefix;

  @override
  String get validToken =>
      'Bearer YKDS@OQ56pwW2Q3R@1N8BrbE7MenUXa&9lPPQZyHEtAh6N%17aVOTbQ5Dw395*gj5RT&*E4Szv0avu*q1epkRsR6AbTiyoTxd9H&zSdpF@LKlwOFOGqT1?YnoXwljwfroVmk47NNXAC#eOcUZTBqbpHd%bPp#Q@WStgWb6CT76e4aaF@XSmIU3EwmDVq52W?SrLtuFEysKaR4aF5uZHd1JYAR&q&o#2ULKcIF0tg&LYQb!9d3fRO5cwqngP8d2@V';

  @override
  String get socketUrl => ApiUrls.productionUrl;

  @override
  String get label => 'Production';
}
