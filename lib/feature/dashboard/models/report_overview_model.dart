// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReportOverviewModel {
  final int totalProperties;
  final double totalRevenue;
  final double totalRevenueOfOwners;
  final int totalOwners;
  final int totalUsers;
  ReportOverviewModel({
    required this.totalProperties,
    required this.totalRevenue,
    required this.totalRevenueOfOwners,
    required this.totalOwners,
    required this.totalUsers,
  });

  ReportOverviewModel copyWith({
    int? totalProperties,
    double? totalRevenue,
    double? totalRevenueOfOwners,
    int? totalOwners,
    int? totalUsers,
  }) {
    return ReportOverviewModel(
      totalProperties: totalProperties ?? this.totalProperties,
      totalRevenue: totalRevenue ?? this.totalRevenue,
      totalRevenueOfOwners: totalRevenueOfOwners ?? this.totalRevenueOfOwners,
      totalOwners: totalOwners ?? this.totalOwners,
      totalUsers: totalUsers ?? this.totalUsers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalProperties': totalProperties,
      'totalRevenue': totalRevenue,
      'totalRevenueOfOwners': totalRevenueOfOwners,
      'totalOwners': totalOwners,
      'totalUsers': totalUsers,
    };
  }

  factory ReportOverviewModel.fromMap(Map<String, dynamic> map) {
    return ReportOverviewModel(
      totalProperties: map['totalProperties'] as int,
      totalRevenue: map['totalRevenue'] as double,
      totalRevenueOfOwners: map['totalRevenueOfOwners'] as double,
      totalOwners: map['totalOwners'] as int,
      totalUsers: map['totalUsers'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReportOverviewModel.fromJson(String source) => ReportOverviewModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReportOverviewModel(totalProperties: $totalProperties, totalRevenue: $totalRevenue, totalRevenueOfOwners: $totalRevenueOfOwners, totalOwners: $totalOwners, totalUsers: $totalUsers)';
  }

  @override
  bool operator ==(covariant ReportOverviewModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.totalProperties == totalProperties &&
      other.totalRevenue == totalRevenue &&
      other.totalRevenueOfOwners == totalRevenueOfOwners &&
      other.totalOwners == totalOwners &&
      other.totalUsers == totalUsers;
  }

  @override
  int get hashCode {
    return totalProperties.hashCode ^
      totalRevenue.hashCode ^
      totalRevenueOfOwners.hashCode ^
      totalOwners.hashCode ^
      totalUsers.hashCode;
  }
}
