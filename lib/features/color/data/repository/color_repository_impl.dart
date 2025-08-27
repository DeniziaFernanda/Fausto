import 'package:fausto/features/color/data/source/color_datasource.dart';
import 'package:fausto/features/color/domain/entity/color_entity.dart';
import 'package:fausto/features/color/domain/repository/color_repository.dart';

class ColorRepositoryImpl implements ColorRepository {
  final ColorDataSource _dataSource;

  ColorRepositoryImpl(this._dataSource);

  @override
  Future<List<ColorEntity>> getColors() async {
    final colorModels = await _dataSource.fetchColors();
    return colorModels.map((model) => model.toEntity()).toList();
  }
}