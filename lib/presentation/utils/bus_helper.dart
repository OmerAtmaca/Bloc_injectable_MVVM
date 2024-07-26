import 'package:event_bus/event_bus.dart';

class BusHelper {
  EventBus eventBus = EventBus();

  static BusHelper? _instance;

  // factory BusHelper() => _instance ??= BusHelper._init();

  static BusHelper? get instance {
    _instance ??= BusHelper._init();

    return _instance;
  }

  BusHelper._init();

  void initialize() {
    eventBus = EventBus();
  }

  void close() {
    eventBus.streamController.close();
  }
}
