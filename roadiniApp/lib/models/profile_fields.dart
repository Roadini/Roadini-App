import 'package:flutter/material.dart';

class ProfileFields{
  const ProfileFields(
      { this.name,
        this.followers,
        this.following,
        this.id,
        this.description,
        this.numberCountries,
        this.urlImage});

  final String name;
  final int numberCountries;
  final List<int> followers;
  final List<int> following;
  final int id;
  final String description;
  final String urlImage;

  factory ProfileFields.fromVars(name, followers, numberCountries, following, id, description, urlImage){
    return new ProfileFields(
      name: name,
      followers: followers,
      numberCountries: numberCountries,
      following:following,
      id: id,
      description: description,
      urlImage :urlImage,
    );
  }
  factory ProfileFields.fromJSON(Map parsedJson){
    return new ProfileFields(
      name: parsedJson['name'],
      followers: parsedJson['followers'],
      numberCountries: parsedJson['numberCountries'],
      following: parsedJson['following'],
      id: parsedJson['id'],
      description: parsedJson['description'],
      urlImage : parsedJson['urlImage'],
    );
  }

  imageCard(){
    return new Center(
      child : new Container(
        width: 250.0,
        height: 200.0,
        decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(this.urlImage))
        ),
      ),
    );
  }
}
