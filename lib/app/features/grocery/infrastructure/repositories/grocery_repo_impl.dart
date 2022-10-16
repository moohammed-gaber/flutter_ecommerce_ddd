import 'package:untitled/app/features/grocery/domain/entities/grocery_data.dart';
import 'package:untitled/app/features/grocery/domain/repositories/grocery_repo.dart';
import 'package:untitled/core/infrastructure/data/clients/remote_mock.dart';

class GroceryRepoImpl extends GroceryRepo {
  final RemoteMock mock;

  GroceryRepoImpl(this.mock);
  Future<GroceryData> getGroceryData() async {
    final data = await mock.getGroceryData();
    return GroceryData.fromMap(data);
  }
}
