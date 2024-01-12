import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'core/utils/api_services.dart';
import 'features/home/data/repos/home_repo_impl.dart';
var  get = HomeRepoImpl(ApiServices(Dio()));
//var  get2 = SearchRepoImpl(ApiServices(Dio()), 'category');
const kPrimaryColor = Color(0xff100B20);
const kTranstionDuration = Duration(seconds: 3);
const kGtSectraFine = 'GT Sectra Fine';
