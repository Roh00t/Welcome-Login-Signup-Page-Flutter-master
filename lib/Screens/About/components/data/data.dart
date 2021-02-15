// import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel
      .setDesc("Connect with collegues. Be Productive & Efficient together");
  sliderModel.setTitle("Network");
  sliderModel.setImageAssetPath("assets/images/introduction1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(
      "Use the in-built pomodoro timer to be Lazer Focused and Productive");
  sliderModel.setTitle("Be focused");
  sliderModel.setImageAssetPath("assets/images/introduction2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Connect and manage multiple devices");
  sliderModel.setTitle("Stay Connected");
  sliderModel.setImageAssetPath("assets/images/illustration.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel.setDesc("Try out our in-built snake game to destress!");
  sliderModel.setTitle("Play");
  sliderModel.setImageAssetPath("assets/images/illustration.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //5
  sliderModel.setDesc("We are here to serve you better!");
  sliderModel.setTitle("Enjoy");
  sliderModel.setImageAssetPath("assets/images/illustration3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}
