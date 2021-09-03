import 'package:equatable/equatable.dart';
import 'package:final_demo/domain/models/Client.dart';
import 'package:flutter/material.dart';

@immutable
class Agent extends Equatable {
  Agent({
    required this.agentID,
    required this.accountNumber,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.role,
    required this.dob,
    required this.address,
    required this.isBlocked,
    required this.budget,
    required this.registeredUsers,
  });

  final String agentID; // Just added this
  final int accountNumber;
  final String firstName;
  final String lastName;
  final String fullName;
  final String role;
  final String dob;
  final String address;
  final bool isBlocked;
  final double budget;
  final List<Client> registeredUsers;

  @override
  List<Object> get props => [
        agentID,
        accountNumber,
        firstName,
        lastName,
        fullName,
        role,
        dob,
        address,
        isBlocked,
        budget,
        registeredUsers,
      ];

  factory Agent.fromJson(Map<String, dynamic> json) {
    return Agent(
        agentID: json['agent_id'],
        accountNumber: json['account_number'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        fullName: json['fullname'], // Don't know what will be received so...
        role: json['role'],
        address: json['address'],
        dob: json['DOB'],
        isBlocked: json['is_blocked'],
        budget: json['budget'],
        registeredUsers: json['registered_users']);
  }

  @override
  String toString() =>
      'Agent { agent_id: $agentID, account_number: $accountNumber, first_name: $firstName, last_name: $lastName, fullname: $fullName,role: $role, address: $address, DOB: $dob, is_blocked:$isBlocked, budget:$budget, registered_users:$registeredUsers}';
}
