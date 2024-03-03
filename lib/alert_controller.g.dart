// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlertController on AlertControllerBase, Store {
  Computed<String>? _$priorityMessageComputed;

  @override
  String get priorityMessage => (_$priorityMessageComputed ??= Computed<String>(
          () => super.priorityMessage,
          name: 'AlertControllerBase.priorityMessage'))
      .value;

  late final _$alertsAtom =
      Atom(name: 'AlertControllerBase.alerts', context: context);

  @override
  ObservableList<Alert> get alerts {
    _$alertsAtom.reportRead();
    return super.alerts;
  }

  @override
  set alerts(ObservableList<Alert> value) {
    _$alertsAtom.reportWrite(value, super.alerts, () {
      super.alerts = value;
    });
  }

  late final _$hideAlertAsyncAction =
      AsyncAction('AlertControllerBase.hideAlert', context: context);

  @override
  Future hideAlert() {
    return _$hideAlertAsyncAction.run(() => super.hideAlert());
  }

  late final _$AlertControllerBaseActionController =
      ActionController(name: 'AlertControllerBase', context: context);

  @override
  dynamic showAlert(Alert alert) {
    final _$actionInfo = _$AlertControllerBaseActionController.startAction(
        name: 'AlertControllerBase.showAlert');
    try {
      return super.showAlert(alert);
    } finally {
      _$AlertControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
alerts: ${alerts},
priorityMessage: ${priorityMessage}
    ''';
  }
}
