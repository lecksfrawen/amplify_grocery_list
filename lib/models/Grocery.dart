/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Grocery type in your schema. */
@immutable
class Grocery extends Model {
  static const classType = const _GroceryModelType();
  final String id;
  final List<GroceryItem>? _groceryItems;
  final String? _title;
  final String? _fileKey;
  final TemporalDate? _finalizationDate;
  final double? _totalAmount;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  GroceryModelIdentifier get modelIdentifier {
      return GroceryModelIdentifier(
        id: id
      );
  }
  
  List<GroceryItem>? get groceryItems {
    return _groceryItems;
  }
  
  String? get title {
    return _title;
  }
  
  String? get fileKey {
    return _fileKey;
  }
  
  TemporalDate? get finalizationDate {
    return _finalizationDate;
  }
  
  double? get totalAmount {
    return _totalAmount;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Grocery._internal({required this.id, groceryItems, title, fileKey, finalizationDate, totalAmount, createdAt, updatedAt}): _groceryItems = groceryItems, _title = title, _fileKey = fileKey, _finalizationDate = finalizationDate, _totalAmount = totalAmount, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Grocery({String? id, List<GroceryItem>? groceryItems, String? title, String? fileKey, TemporalDate? finalizationDate, double? totalAmount}) {
    return Grocery._internal(
      id: id == null ? UUID.getUUID() : id,
      groceryItems: groceryItems != null ? List<GroceryItem>.unmodifiable(groceryItems) : groceryItems,
      title: title,
      fileKey: fileKey,
      finalizationDate: finalizationDate,
      totalAmount: totalAmount);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grocery &&
      id == other.id &&
      DeepCollectionEquality().equals(_groceryItems, other._groceryItems) &&
      _title == other._title &&
      _fileKey == other._fileKey &&
      _finalizationDate == other._finalizationDate &&
      _totalAmount == other._totalAmount;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Grocery {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("fileKey=" + "$_fileKey" + ", ");
    buffer.write("finalizationDate=" + (_finalizationDate != null ? _finalizationDate!.format() : "null") + ", ");
    buffer.write("totalAmount=" + (_totalAmount != null ? _totalAmount!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Grocery copyWith({List<GroceryItem>? groceryItems, String? title, String? fileKey, TemporalDate? finalizationDate, double? totalAmount}) {
    return Grocery._internal(
      id: id,
      groceryItems: groceryItems ?? this.groceryItems,
      title: title ?? this.title,
      fileKey: fileKey ?? this.fileKey,
      finalizationDate: finalizationDate ?? this.finalizationDate,
      totalAmount: totalAmount ?? this.totalAmount);
  }
  
  Grocery.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _groceryItems = json['groceryItems'] is List
        ? (json['groceryItems'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => GroceryItem.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _title = json['title'],
      _fileKey = json['fileKey'],
      _finalizationDate = json['finalizationDate'] != null ? TemporalDate.fromString(json['finalizationDate']) : null,
      _totalAmount = (json['totalAmount'] as num?)?.toDouble(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'groceryItems': _groceryItems?.map((GroceryItem? e) => e?.toJson()).toList(), 'title': _title, 'fileKey': _fileKey, 'finalizationDate': _finalizationDate?.format(), 'totalAmount': _totalAmount, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'groceryItems': _groceryItems, 'title': _title, 'fileKey': _fileKey, 'finalizationDate': _finalizationDate, 'totalAmount': _totalAmount, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<GroceryModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<GroceryModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField GROCERYITEMS = QueryField(
    fieldName: "groceryItems",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (GroceryItem).toString()));
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField FILEKEY = QueryField(fieldName: "fileKey");
  static final QueryField FINALIZATIONDATE = QueryField(fieldName: "finalizationDate");
  static final QueryField TOTALAMOUNT = QueryField(fieldName: "totalAmount");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Grocery";
    modelSchemaDefinition.pluralName = "Groceries";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Grocery.GROCERYITEMS,
      isRequired: false,
      ofModelName: (GroceryItem).toString(),
      associatedKey: GroceryItem.GROCERYID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grocery.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grocery.FILEKEY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grocery.FINALIZATIONDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grocery.TOTALAMOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _GroceryModelType extends ModelType<Grocery> {
  const _GroceryModelType();
  
  @override
  Grocery fromJson(Map<String, dynamic> jsonData) {
    return Grocery.fromJson(jsonData);
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Grocery] in your schema.
 */
@immutable
class GroceryModelIdentifier implements ModelIdentifier<Grocery> {
  final String id;

  /** Create an instance of GroceryModelIdentifier using [id] the primary key. */
  const GroceryModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'GroceryModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is GroceryModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}