import 'package:json_annotation/json_annotation.dart';

import 'medicine_model.dart';

part 'prescription_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Prescription {
  Prescription(
      {this.id,
      this.name,
      this.shortDescription,
      this.explanation,
      this.medicines,
      this.tani,
      this.isIlyasYolbas = false});

  int? id;
  String? name;
  String? shortDescription;
  List<String>? explanation; // Tedavi ile ilgili ek açıklama
  bool isIlyasYolbas;
  List<Medicine>? medicines;
  String? tani;

  factory Prescription.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$PrescriptionToJson(this);

  @override
  String toString() {
    return 'Prescription{id: $id, name: $name, shortDescription: $shortDescription, explanation: $explanation, medicines: $medicines}';
  }
}
