import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'images_record.g.dart';

abstract class ImagesRecord
    implements Built<ImagesRecord, ImagesRecordBuilder> {
  static Serializer<ImagesRecord> get serializer => _$imagesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_timestamp')
  DateTime get createdTimestamp;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  String get description;

  @nullable
  String get tag;

  @nullable
  LatLng get location;

  @nullable
  String get title;

  @nullable
  double get amount;

  @nullable
  @BuiltValueField(wireName: 'purchased_by')
  DocumentReference get purchasedBy;

  @nullable
  @BuiltValueField(wireName: 'purchased_with')
  String get purchasedWith;

  @nullable
  bool get minted;

  @nullable
  @BuiltValueField(wireName: 'purchased_date')
  DateTime get purchasedDate;

  @nullable
  @BuiltValueField(wireName: 'image_path_url')
  String get imagePathUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ImagesRecordBuilder builder) => builder
    ..description = ''
    ..tag = ''
    ..title = ''
    ..amount = 0.0
    ..purchasedWith = ''
    ..minted = false
    ..imagePathUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('images');

  static Stream<ImagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ImagesRecord._();
  factory ImagesRecord([void Function(ImagesRecordBuilder) updates]) =
      _$ImagesRecord;

  static ImagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createImagesRecordData({
  DateTime createdTimestamp,
  DocumentReference createdBy,
  String description,
  String tag,
  LatLng location,
  String title,
  double amount,
  DocumentReference purchasedBy,
  String purchasedWith,
  bool minted,
  DateTime purchasedDate,
  String imagePathUrl,
}) =>
    serializers.toFirestore(
        ImagesRecord.serializer,
        ImagesRecord((i) => i
          ..createdTimestamp = createdTimestamp
          ..createdBy = createdBy
          ..description = description
          ..tag = tag
          ..location = location
          ..title = title
          ..amount = amount
          ..purchasedBy = purchasedBy
          ..purchasedWith = purchasedWith
          ..minted = minted
          ..purchasedDate = purchasedDate
          ..imagePathUrl = imagePathUrl));
