///
//  Generated code. Do not modify.
///
library protogen;

import 'dart:typed_data';

//import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

class DatabaseEntity extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DatabaseEntity')
    ..a(1, 'url', GeneratedMessage.OS)
    ..a(2, 'databaseMajorVersion', GeneratedMessage.O3)
    ..a(3, 'databaseMinorVersion', GeneratedMessage.O3)
    ..a(4, 'databaseProductName', GeneratedMessage.OS)
    ..a(5, 'databaseProductVersion', GeneratedMessage.OS)
    ..a(6, 'defaultTransactionIsolation', GeneratedMessage.O3)
    ..a(7, 'driverMajorVersion', GeneratedMessage.O3)
    ..a(8, 'driverMinorVersion', GeneratedMessage.O3)
    ..a(9, 'driverName', GeneratedMessage.OS)
    ..a(10, 'driverVersion', GeneratedMessage.OS)
    ..a(11, 'extraNameCharacters', GeneratedMessage.OS)
    ..a(12, 'identifierQuoteString', GeneratedMessage.OS)
    ..a(13, 'jDBCMajorVersion', GeneratedMessage.O3)
    ..a(14, 'jDBCMinorVersion', GeneratedMessage.O3)
    ..a(15, 'maxBinaryLiteralLength', GeneratedMessage.O3)
    ..a(16, 'maxCharLiteralLength', GeneratedMessage.O3)
    ..a(17, 'maxColumnNameLength', GeneratedMessage.O3)
    ..a(18, 'maxColumnsInGroupBy', GeneratedMessage.O3)
    ..a(19, 'maxColumnsInIndex', GeneratedMessage.O3)
    ..a(20, 'maxColumnsInOrderBy', GeneratedMessage.O3)
    ..a(21, 'maxColumnsInSelect', GeneratedMessage.O3)
    ..a(22, 'maxColumnsInTable', GeneratedMessage.O3)
    ..a(23, 'maxConnections', GeneratedMessage.O3)
    ..a(24, 'maxIndexLength', GeneratedMessage.O3)
    ..a(25, 'maxRowSize', GeneratedMessage.O3)
    ..a(26, 'maxStatementLength', GeneratedMessage.O3)
    ..a(27, 'maxStatements', GeneratedMessage.O3)
    ..a(28, 'maxTablesInSelect', GeneratedMessage.O3)
    ..a(29, 'isReadOnly', GeneratedMessage.OB)
    ..a(30, 'searchStringEscape', GeneratedMessage.OS)
    ..a(31, 'storesLowerCaseIdentifiers', GeneratedMessage.OB)
    ..a(32, 'storesUpperCaseIdentifiers', GeneratedMessage.OB)
    ..a(33, 'userName', GeneratedMessage.OS)
    ..a(39, 'id', GeneratedMessage.O3)
    ..a(40, 'version', GeneratedMessage.O3)
    ..p(41, 'tablesId', GeneratedMessage.P3)
    ..hasRequiredFields = false
  ;

  DatabaseEntity() : super();
  DatabaseEntity.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DatabaseEntity.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DatabaseEntity clone() => new DatabaseEntity()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;

  String get url => getField(1);
  void set url(String v) { setField(1, v); }
  bool hasUrl() => hasField(1);
  void clearUrl() => clearField(1);

  int get databaseMajorVersion => getField(2);
  void set databaseMajorVersion(int v) { setField(2, v); }
  bool hasDatabaseMajorVersion() => hasField(2);
  void clearDatabaseMajorVersion() => clearField(2);

  int get databaseMinorVersion => getField(3);
  void set databaseMinorVersion(int v) { setField(3, v); }
  bool hasDatabaseMinorVersion() => hasField(3);
  void clearDatabaseMinorVersion() => clearField(3);

  String get databaseProductName => getField(4);
  void set databaseProductName(String v) { setField(4, v); }
  bool hasDatabaseProductName() => hasField(4);
  void clearDatabaseProductName() => clearField(4);

  String get databaseProductVersion => getField(5);
  void set databaseProductVersion(String v) { setField(5, v); }
  bool hasDatabaseProductVersion() => hasField(5);
  void clearDatabaseProductVersion() => clearField(5);

  int get defaultTransactionIsolation => getField(6);
  void set defaultTransactionIsolation(int v) { setField(6, v); }
  bool hasDefaultTransactionIsolation() => hasField(6);
  void clearDefaultTransactionIsolation() => clearField(6);

  int get driverMajorVersion => getField(7);
  void set driverMajorVersion(int v) { setField(7, v); }
  bool hasDriverMajorVersion() => hasField(7);
  void clearDriverMajorVersion() => clearField(7);

  int get driverMinorVersion => getField(8);
  void set driverMinorVersion(int v) { setField(8, v); }
  bool hasDriverMinorVersion() => hasField(8);
  void clearDriverMinorVersion() => clearField(8);

  String get driverName => getField(9);
  void set driverName(String v) { setField(9, v); }
  bool hasDriverName() => hasField(9);
  void clearDriverName() => clearField(9);

  String get driverVersion => getField(10);
  void set driverVersion(String v) { setField(10, v); }
  bool hasDriverVersion() => hasField(10);
  void clearDriverVersion() => clearField(10);

  String get extraNameCharacters => getField(11);
  void set extraNameCharacters(String v) { setField(11, v); }
  bool hasExtraNameCharacters() => hasField(11);
  void clearExtraNameCharacters() => clearField(11);

  String get identifierQuoteString => getField(12);
  void set identifierQuoteString(String v) { setField(12, v); }
  bool hasIdentifierQuoteString() => hasField(12);
  void clearIdentifierQuoteString() => clearField(12);

  int get jDBCMajorVersion => getField(13);
  void set jDBCMajorVersion(int v) { setField(13, v); }
  bool hasJDBCMajorVersion() => hasField(13);
  void clearJDBCMajorVersion() => clearField(13);

  int get jDBCMinorVersion => getField(14);
  void set jDBCMinorVersion(int v) { setField(14, v); }
  bool hasJDBCMinorVersion() => hasField(14);
  void clearJDBCMinorVersion() => clearField(14);

  int get maxBinaryLiteralLength => getField(15);
  void set maxBinaryLiteralLength(int v) { setField(15, v); }
  bool hasMaxBinaryLiteralLength() => hasField(15);
  void clearMaxBinaryLiteralLength() => clearField(15);

  int get maxCharLiteralLength => getField(16);
  void set maxCharLiteralLength(int v) { setField(16, v); }
  bool hasMaxCharLiteralLength() => hasField(16);
  void clearMaxCharLiteralLength() => clearField(16);

  int get maxColumnNameLength => getField(17);
  void set maxColumnNameLength(int v) { setField(17, v); }
  bool hasMaxColumnNameLength() => hasField(17);
  void clearMaxColumnNameLength() => clearField(17);

  int get maxColumnsInGroupBy => getField(18);
  void set maxColumnsInGroupBy(int v) { setField(18, v); }
  bool hasMaxColumnsInGroupBy() => hasField(18);
  void clearMaxColumnsInGroupBy() => clearField(18);

  int get maxColumnsInIndex => getField(19);
  void set maxColumnsInIndex(int v) { setField(19, v); }
  bool hasMaxColumnsInIndex() => hasField(19);
  void clearMaxColumnsInIndex() => clearField(19);

  int get maxColumnsInOrderBy => getField(20);
  void set maxColumnsInOrderBy(int v) { setField(20, v); }
  bool hasMaxColumnsInOrderBy() => hasField(20);
  void clearMaxColumnsInOrderBy() => clearField(20);

  int get maxColumnsInSelect => getField(21);
  void set maxColumnsInSelect(int v) { setField(21, v); }
  bool hasMaxColumnsInSelect() => hasField(21);
  void clearMaxColumnsInSelect() => clearField(21);

  int get maxColumnsInTable => getField(22);
  void set maxColumnsInTable(int v) { setField(22, v); }
  bool hasMaxColumnsInTable() => hasField(22);
  void clearMaxColumnsInTable() => clearField(22);

  int get maxConnections => getField(23);
  void set maxConnections(int v) { setField(23, v); }
  bool hasMaxConnections() => hasField(23);
  void clearMaxConnections() => clearField(23);

  int get maxIndexLength => getField(24);
  void set maxIndexLength(int v) { setField(24, v); }
  bool hasMaxIndexLength() => hasField(24);
  void clearMaxIndexLength() => clearField(24);

  int get maxRowSize => getField(25);
  void set maxRowSize(int v) { setField(25, v); }
  bool hasMaxRowSize() => hasField(25);
  void clearMaxRowSize() => clearField(25);

  int get maxStatementLength => getField(26);
  void set maxStatementLength(int v) { setField(26, v); }
  bool hasMaxStatementLength() => hasField(26);
  void clearMaxStatementLength() => clearField(26);

  int get maxStatements => getField(27);
  void set maxStatements(int v) { setField(27, v); }
  bool hasMaxStatements() => hasField(27);
  void clearMaxStatements() => clearField(27);

  int get maxTablesInSelect => getField(28);
  void set maxTablesInSelect(int v) { setField(28, v); }
  bool hasMaxTablesInSelect() => hasField(28);
  void clearMaxTablesInSelect() => clearField(28);

  bool get isReadOnly => getField(29);
  void set isReadOnly(bool v) { setField(29, v); }
  bool hasIsReadOnly() => hasField(29);
  void clearIsReadOnly() => clearField(29);

  String get searchStringEscape => getField(30);
  void set searchStringEscape(String v) { setField(30, v); }
  bool hasSearchStringEscape() => hasField(30);
  void clearSearchStringEscape() => clearField(30);

  bool get storesLowerCaseIdentifiers => getField(31);
  void set storesLowerCaseIdentifiers(bool v) { setField(31, v); }
  bool hasStoresLowerCaseIdentifiers() => hasField(31);
  void clearStoresLowerCaseIdentifiers() => clearField(31);

  bool get storesUpperCaseIdentifiers => getField(32);
  void set storesUpperCaseIdentifiers(bool v) { setField(32, v); }
  bool hasStoresUpperCaseIdentifiers() => hasField(32);
  void clearStoresUpperCaseIdentifiers() => clearField(32);

  String get userName => getField(33);
  void set userName(String v) { setField(33, v); }
  bool hasUserName() => hasField(33);
  void clearUserName() => clearField(33);

  int get id => getField(39);
  void set id(int v) { setField(39, v); }
  bool hasId() => hasField(39);
  void clearId() => clearField(39);

  int get version => getField(40);
  void set version(int v) { setField(40, v); }
  bool hasVersion() => hasField(40);
  void clearVersion() => clearField(40);

  List<int> get tablesId => getField(41);
}

class TableEntity extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TableEntity')
    ..a(1, 'name', GeneratedMessage.OS)
    ..a(2, 'type', GeneratedMessage.OS)
    ..a(3, 'schemas', GeneratedMessage.OS)
    ..a(4, 'remarks', GeneratedMessage.OS)
    ..a(5, 'numberOfLines', GeneratedMessage.O3)
    ..a(12, 'id', GeneratedMessage.O3)
    ..a(13, 'version', GeneratedMessage.O3)
    ..p(14, 'columnsId', GeneratedMessage.P3)
    ..a(15, 'databaseId', GeneratedMessage.O3)
    ..hasRequiredFields = false
  ;

  TableEntity() : super();
  TableEntity.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TableEntity.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TableEntity clone() => new TableEntity()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;

  String get name => getField(1);
  void set name(String v) { setField(1, v); }
  bool hasName() => hasField(1);
  void clearName() => clearField(1);

  String get type => getField(2);
  void set type(String v) { setField(2, v); }
  bool hasType() => hasField(2);
  void clearType() => clearField(2);

  String get schemas => getField(3);
  void set schemas(String v) { setField(3, v); }
  bool hasSchemas() => hasField(3);
  void clearSchemas() => clearField(3);

  String get remarks => getField(4);
  void set remarks(String v) { setField(4, v); }
  bool hasRemarks() => hasField(4);
  void clearRemarks() => clearField(4);

  int get numberOfLines => getField(5);
  void set numberOfLines(int v) { setField(5, v); }
  bool hasNumberOfLines() => hasField(5);
  void clearNumberOfLines() => clearField(5);

  int get id => getField(12);
  void set id(int v) { setField(12, v); }
  bool hasId() => hasField(12);
  void clearId() => clearField(12);

  int get version => getField(13);
  void set version(int v) { setField(13, v); }
  bool hasVersion() => hasField(13);
  void clearVersion() => clearField(13);

  List<int> get columnsId => getField(14);

  int get databaseId => getField(15);
  void set databaseId(int v) { setField(15, v); }
  bool hasDatabaseId() => hasField(15);
  void clearDatabaseId() => clearField(15);
}

class ColumnEntity extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ColumnEntity')
    ..a(1, 'numberOfDifferentValue', GeneratedMessage.O3)
    ..a(2, 'className', GeneratedMessage.OS)
    ..a(3, 'displaySize', GeneratedMessage.O3)
    ..a(4, 'label', GeneratedMessage.OS)
    ..a(5, 'name', GeneratedMessage.OS)
    ..a(6, 'type', GeneratedMessage.O3)
    ..a(7, 'typeName', GeneratedMessage.OS)
    ..a(8, 'precision', GeneratedMessage.O3)
    ..a(9, 'scale', GeneratedMessage.O3)
    ..a(10, 'shemaName', GeneratedMessage.OS)
    ..a(11, 'tableName', GeneratedMessage.OS)
    ..a(12, 'isAutoIncrement', GeneratedMessage.OB)
    ..a(13, 'isCaseSensitive', GeneratedMessage.OB)
    ..a(14, 'isCurrency', GeneratedMessage.OB)
    ..a(15, 'isDefinitelyWritable', GeneratedMessage.OB)
    ..a(16, 'isNullable', GeneratedMessage.O3)
    ..a(17, 'isReadOnly', GeneratedMessage.OB)
    ..a(18, 'isSearchable', GeneratedMessage.OB)
    ..a(19, 'isSigned', GeneratedMessage.OB)
    ..a(20, 'isWritable', GeneratedMessage.OB)
    ..a(29, 'id', GeneratedMessage.O3)
    ..a(30, 'version', GeneratedMessage.O3)
    ..a(31, 'tableId', GeneratedMessage.O3)
    ..hasRequiredFields = false
  ;

  ColumnEntity() : super();
  ColumnEntity.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ColumnEntity.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ColumnEntity clone() => new ColumnEntity()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;

  int get numberOfDifferentValue => getField(1);
  void set numberOfDifferentValue(int v) { setField(1, v); }
  bool hasNumberOfDifferentValue() => hasField(1);
  void clearNumberOfDifferentValue() => clearField(1);

  String get className => getField(2);
  void set className(String v) { setField(2, v); }
  bool hasClassName() => hasField(2);
  void clearClassName() => clearField(2);

  int get displaySize => getField(3);
  void set displaySize(int v) { setField(3, v); }
  bool hasDisplaySize() => hasField(3);
  void clearDisplaySize() => clearField(3);

  String get label => getField(4);
  void set label(String v) { setField(4, v); }
  bool hasLabel() => hasField(4);
  void clearLabel() => clearField(4);

  String get name => getField(5);
  void set name(String v) { setField(5, v); }
  bool hasName() => hasField(5);
  void clearName() => clearField(5);

  int get type => getField(6);
  void set type(int v) { setField(6, v); }
  bool hasType() => hasField(6);
  void clearType() => clearField(6);

  String get typeName => getField(7);
  void set typeName(String v) { setField(7, v); }
  bool hasTypeName() => hasField(7);
  void clearTypeName() => clearField(7);

  int get precision => getField(8);
  void set precision(int v) { setField(8, v); }
  bool hasPrecision() => hasField(8);
  void clearPrecision() => clearField(8);

  int get scale => getField(9);
  void set scale(int v) { setField(9, v); }
  bool hasScale() => hasField(9);
  void clearScale() => clearField(9);

  String get shemaName => getField(10);
  void set shemaName(String v) { setField(10, v); }
  bool hasShemaName() => hasField(10);
  void clearShemaName() => clearField(10);

  String get tableName => getField(11);
  void set tableName(String v) { setField(11, v); }
  bool hasTableName() => hasField(11);
  void clearTableName() => clearField(11);

  bool get isAutoIncrement => getField(12);
  void set isAutoIncrement(bool v) { setField(12, v); }
  bool hasIsAutoIncrement() => hasField(12);
  void clearIsAutoIncrement() => clearField(12);

  bool get isCaseSensitive => getField(13);
  void set isCaseSensitive(bool v) { setField(13, v); }
  bool hasIsCaseSensitive() => hasField(13);
  void clearIsCaseSensitive() => clearField(13);

  bool get isCurrency => getField(14);
  void set isCurrency(bool v) { setField(14, v); }
  bool hasIsCurrency() => hasField(14);
  void clearIsCurrency() => clearField(14);

  bool get isDefinitelyWritable => getField(15);
  void set isDefinitelyWritable(bool v) { setField(15, v); }
  bool hasIsDefinitelyWritable() => hasField(15);
  void clearIsDefinitelyWritable() => clearField(15);

  int get isNullable => getField(16);
  void set isNullable(int v) { setField(16, v); }
  bool hasIsNullable() => hasField(16);
  void clearIsNullable() => clearField(16);

  bool get isReadOnly => getField(17);
  void set isReadOnly(bool v) { setField(17, v); }
  bool hasIsReadOnly() => hasField(17);
  void clearIsReadOnly() => clearField(17);

  bool get isSearchable => getField(18);
  void set isSearchable(bool v) { setField(18, v); }
  bool hasIsSearchable() => hasField(18);
  void clearIsSearchable() => clearField(18);

  bool get isSigned => getField(19);
  void set isSigned(bool v) { setField(19, v); }
  bool hasIsSigned() => hasField(19);
  void clearIsSigned() => clearField(19);

  bool get isWritable => getField(20);
  void set isWritable(bool v) { setField(20, v); }
  bool hasIsWritable() => hasField(20);
  void clearIsWritable() => clearField(20);

  int get id => getField(29);
  void set id(int v) { setField(29, v); }
  bool hasId() => hasField(29);
  void clearId() => clearField(29);

  int get version => getField(30);
  void set version(int v) { setField(30, v); }
  bool hasVersion() => hasField(30);
  void clearVersion() => clearField(30);

  int get tableId => getField(31);
  void set tableId(int v) { setField(31, v); }
  bool hasTableId() => hasField(31);
  void clearTableId() => clearField(31);
}

class FullBucket extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('FullBucket')
    ..m(1, 'databaseEntity', () => new DatabaseEntity(), () => new PbList<DatabaseEntity>())
    ..m(2, 'tableEntity', () => new TableEntity(), () => new PbList<TableEntity>())
    ..m(3, 'columnEntity', () => new ColumnEntity(), () => new PbList<ColumnEntity>())
    ..hasRequiredFields = false
  ;

  FullBucket() : super();
  FullBucket.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FullBucket.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FullBucket clone() => new FullBucket()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;

  List<DatabaseEntity> get databaseEntity => getField(1);

  List<TableEntity> get tableEntity => getField(2);

  List<ColumnEntity> get columnEntity => getField(3);
}

