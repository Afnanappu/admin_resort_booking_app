import 'dart:convert';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/core/data/models/owner_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileTileForOwnerDetails extends StatelessWidget {
  const ProfileTileForOwnerDetails({
    super.key,
    required this.owner,
    required this.context,
  });

  final OwnerModel owner;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: owner.profilePicture == null
                    ? const NetworkImage('https://via.placeholder.com/150')
                    : MemoryImage(
                        base64Decode(
                          owner.profilePicture!,
                        ),
                      ),
              ),
              Column(
                children: [
                  Text(
                    owner.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: owner.isBlocked
                  ? MyColors.error.withAlpha(50)
                  : MyColors.success.withAlpha(50),
              borderRadius: BorderRadius.circular(borderRad10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Text(
              owner.isBlocked ? 'Blocked' : 'Active',
              style: TextStyle(
                fontSize: 12,
                color: owner.isBlocked ? MyColors.error : MyColors.success,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
