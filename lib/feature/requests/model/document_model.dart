import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DocumentModel {
  final String fileExtension;
  final String filePath;
  final String fileName;
  final String base64file;
  DocumentModel({
    required this.fileExtension,
    required this.filePath,
    required this.fileName,
    required this.base64file,
  });

  DocumentModel copyWith({
    String? fileExtension,
    String? filePath,
    String? fileName,
    String? base64file,
  }) {
    return DocumentModel(
      fileExtension: fileExtension ?? this.fileExtension,
      filePath: filePath ?? this.filePath,
      fileName: fileName ?? this.fileName,
      base64file: base64file ?? this.base64file,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileExtension': fileExtension,
      'filePath': filePath,
      'fileName': fileName,
      'base64file': base64file,
    };
  }

  factory DocumentModel.fromMap(Map<String, dynamic> map) {
    return DocumentModel(
      fileExtension: map['fileExtension'] as String,
      filePath: map['filePath'] as String,
      fileName: map['fileName'] as String,
      base64file: map['base64file'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DocumentModel.fromJson(String source) =>
      DocumentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DocumentModel(fileExtension: $fileExtension, filePath: $filePath, fileName: $fileName, base64file: $base64file)';
  }

  @override
  bool operator ==(covariant DocumentModel other) {
    if (identical(this, other)) return true;

    return other.fileExtension == fileExtension &&
        other.filePath == filePath &&
        other.fileName == fileName &&
        other.base64file == base64file;
  }

  @override
  int get hashCode {
    return fileExtension.hashCode ^
        filePath.hashCode ^
        fileName.hashCode ^
        base64file.hashCode;
  }
}
