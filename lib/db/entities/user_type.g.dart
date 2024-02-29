// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserTypeAdapter extends TypeAdapter<UserType> {
  @override
  final int typeId = 4;

  @override
  UserType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return UserType.advisor;
      case 2:
        return UserType.customer;
      case 3:
        return UserType.state;
      default:
        return UserType.advisor;
    }
  }

  @override
  void write(BinaryWriter writer, UserType obj) {
    switch (obj) {
      case UserType.advisor:
        writer.writeByte(1);
        break;
      case UserType.customer:
        writer.writeByte(2);
        break;
      case UserType.state:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
