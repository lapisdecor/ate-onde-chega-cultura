import 'package:flutter/material.dart';
import 'package:mobileapp/domain/managers/binding_manager.dart';
import 'package:mobileapp/domain/model/Binding.dart';

enum SelectedType {
  BIBLIOTECAS,
  CINEMAS,
  GALERIAS,
  MUSEUS,
  RECINTOS,
  TEATROS,
}

extension SelectedTypeExtension on SelectedType {
  String get typeId {
    switch (this) {
      case SelectedType.CINEMAS:
        return 'Q41253';
      case SelectedType.MUSEUS:
        return 'Q33506';
      case SelectedType.BIBLIOTECAS:
        return 'Q7075';
      case SelectedType.GALERIAS:
        return 'Q1007870';
      case SelectedType.RECINTOS:
        return 'Q18674739';
      case SelectedType.TEATROS:
        return 'Q24354';
    }
  }

  IconData get iconData {
    switch (this) {
      case SelectedType.CINEMAS:
        return Icons.movie;
      case SelectedType.MUSEUS:
        return Icons.museum;
      case SelectedType.BIBLIOTECAS:
        return Icons.local_library_rounded;
      case SelectedType.GALERIAS:
        return Icons.filter_frames;
      case SelectedType.RECINTOS:
        return Icons.workspaces_filled;
      case SelectedType.TEATROS:
        return Icons.theater_comedy;
    }
  }

  Future<List<Binding>> get getBindings async {
    BindingManager bindingManager = BindingManager();
    return bindingManager.getBindings(this);
  }
}
