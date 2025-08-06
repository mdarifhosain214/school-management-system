import 'package:flutter/material.dart';

import 'package:school_management_system_app/utils/font_manager.dart';

TextStyle _getTextStyle(double fontSize ,String fontFamily,FontWeight fontWeight,Color color){
  return TextStyle(fontSize:fontSize,fontFamily: fontFamily,color: color ,);
}
//regular style
TextStyle getRegularStyle({double fontSize=FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.regural, color);
}
//light text style
TextStyle getLightStyle({double fontSize=FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.light, color);
}

//mediun text style
TextStyle getMediunStyle({double fontSize=FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.medium, color);
}
//light text style
TextStyle getSemiBoldStyle({double fontSize=FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.semiBold, color);
}
//light text style
TextStyle getBoldStyle({double fontSize=FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.bold, color);
}
