import 'package:equatable/equatable.dart';
import 'package:final_demo/domain/models/Agent.dart';
import 'package:flutter/material.dart';

@immutable
class Client extends Equatable {
  const Client({
    // required this.id,
    this.accountNumber,
    required this.firstName,
    required this.lastName,
    this.fullName,
    this.role, // inferred from sender
    required this.dob,
    required this.address,
    this.isBlocked, // Can't decide if this is nullable because we don't have it when we send
    required this.balance,
    this.accountType, //inferred from initial deposit
    this.beneficiaries, //acquired later
    this.registeredBy,
  });

  // final int id;
  final int? accountNumber;
  final String firstName;
  final String lastName;
  final String? fullName;
  final int? role;
  final String dob;
  final String address;
  final bool? isBlocked;
  final double balance;
  final String? accountType;
  final List<Client>? beneficiaries; // I doubt this just made it to hold space
  final Agent? registeredBy;

  @override
  List<Object?> get props => [
        // id,
        accountNumber,
        firstName,
        lastName,
        fullName,
        role,
        dob,
        address,
        isBlocked,
        balance,
        accountType,
        beneficiaries,
        registeredBy,
      ];

  factory Client.fromJson(Map<String, dynamic> json) => Client(
      accountNumber: json['account_number'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      role: json['role'],
      address: json['address'],
      dob: json['DOB'],
      isBlocked: json['is_blocked'],
      balance: json['balance'],
      accountType: json['account_type'],
      beneficiaries: json['saved'],
      registeredBy: json['registered_by']);

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'address': address,
        'DOB': dob,
        'balance': balance,
        'registered_by': registeredBy,
      };
  @override
  String toString() =>
      'Client { account_number: $accountNumber, first_name: $firstName, last_name: $lastName, fullname: $fullName,role: $role, address: $address, DOB: $dob, is_blocked:$isBlocked, balance:$balance, account_type: $accountType, saved: $beneficiaries}';
}