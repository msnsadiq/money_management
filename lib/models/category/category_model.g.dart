// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryModelAdapter extends TypeAdapter<CategoryModel> {
  @override
  final int typeId = 1;

  @override
  CategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryModel(
      id: fields[0] as String,
      name: fields[1] as String,
      type: fields[3] as CatergoryType,
      isDeleted: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isDeleted)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CatergoryTypeAdapter extends TypeAdapter<CatergoryType> {
  @override
  final int typeId = 2;

  @override
  CatergoryType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CatergoryType.income;
      case 1:
        return CatergoryType.expense;
      default:
        return CatergoryType.income;
    }
  }

  @override
  void write(BinaryWriter writer, CatergoryType obj) {
    switch (obj) {
      case CatergoryType.income:
        writer.writeByte(0);
        break;
      case CatergoryType.expense:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatergoryTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
