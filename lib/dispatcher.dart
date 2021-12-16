import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvu/bloc/messages.dart';
import 'package:flutter_mvu/bloc/update.dart';

void dispatch(BuildContext context, Message message) {
  BlocProvider.of<Update>(context).add(message);
}
