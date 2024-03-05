import 'package:bluesoft_bank/utils/navigation/navigation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NavigationModule {
  @Injectable()
  Navigation navigation() => Navigation();
}
