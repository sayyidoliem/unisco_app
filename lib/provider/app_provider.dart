import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:unisco_app/notifiers/position_notifier.dart';

class AppProvider {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => PositionNotifier()),
  ];
}
