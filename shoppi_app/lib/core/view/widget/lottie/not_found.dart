import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppi_app/core/constants/app_image_constants.dart';

class NotFoundLottie extends StatelessWidget {
  const NotFoundLottie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AppImageConstants.instance.notFoundLottie);
  }
}