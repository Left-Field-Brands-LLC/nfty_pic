import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'wallets_record.g.dart';

abstract class WalletsRecord
    implements Built<WalletsRecord, WalletsRecordBuilder> {
  static Serializer<WalletsRecord> get serializer => _$walletsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'added_timestamp')
  DateTime get addedTimestamp;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'wallet_name')
  String get walletName;

  @nullable
  @BuiltValueField(wireName: 'wallet_id')
  String get walletId;

  @nullable
  double get amount;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(WalletsRecordBuilder builder) => builder
    ..walletName = ''
    ..walletId = ''
    ..amount = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wallets');

  static Stream<WalletsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<WalletsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  WalletsRecord._();
  factory WalletsRecord([void Function(WalletsRecordBuilder) updates]) =
      _$WalletsRecord;

  static WalletsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createWalletsRecordData({
  DateTime addedTimestamp,
  DocumentReference user,
  String walletName,
  String walletId,
  double amount,
}) =>
    serializers.toFirestore(
        WalletsRecord.serializer,
        WalletsRecord((w) => w
          ..addedTimestamp = addedTimestamp
          ..user = user
          ..walletName = walletName
          ..walletId = walletId
          ..amount = amount));
