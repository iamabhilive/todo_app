import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime dueDate(DateTime date) {
  // return date with 11:59 pm time

  return DateTime(date.year, date.month, date.day, 23, 59);
}

DateTime startDate(DateTime date) {
  // return date with 12:00 am time

  return DateTime(date.year, date.month, date.day, 0, 0);
}

DateTime stringToDate(String dateString) {
  // convert string d/M/y h:mm a to datetime
  // Create a date format object with the given format
  final DateFormat format = DateFormat('d/M/y h:mm a');

  // Parse the dateString to a DateTime object using the format
  DateTime dateTime = format.parse(dateString);

  // Return the parsed DateTime object
  return dateTime;
}
