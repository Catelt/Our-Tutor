import 'package:flutter/material.dart';

import '../routing/coordinator.dart';
import 'app_localizations.dart';

class S {
  static get delegate => AppLocalizations.delegate;
  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  static AppLocalizations get text {
    return AppLocalizations.of(XCoordinator().context)!;
  }
}
