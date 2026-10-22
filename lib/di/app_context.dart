import '../data/models/vietmap_remote_config_model.dart';

class AppContext {
  static Map tiles = {};
  static final AppContext _singleton = AppContext._internal();

  static RemoteConfigModel? _remoteConfigModel;
  factory AppContext() {
    return _singleton;
  }
  AppContext._internal();
  static void setRemoteConfigValue(RemoteConfigModel data) {
    _remoteConfigModel = data;
  }

  static RemoteConfigModel? getRemoteConfigValue() {
    return _remoteConfigModel;
  }

  static String? getVietmapAPIKey() {
    return _remoteConfigModel?.vietmapAPIKey ?? '532b6d9e246f4584134384f61421759b95c3e7c3b8979348';
  }

  static String? getVietmapBaseUrl() {
    return _remoteConfigModel?.vietmapBaseUrl ?? 'https://maps.vietmap.vn/api/';
  }

  static String? getVietmapMapStyleUrl() {
    return _remoteConfigModel?.vietmapMapStyleUrl ??
        'https://maps.vietmap.vn/api/maps/light/styles.json?apikey=532b6d9e246f4584134384f61421759b95c3e7c3b8979348';
  }
}
