import 'package:untitled/app/features/grocery/domain/entities/grocery_data.dart';

abstract class GroceryRepo {
  Future<GroceryData> getGroceryData();
}
