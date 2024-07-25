import 'package:event_bus/event_bus.dart';

class BusHelper {
  static late EventBus eventBus;

  static void initialize() {
    eventBus = EventBus();
  }

  static void close() {
    eventBus.streamController.close();
  }
}
