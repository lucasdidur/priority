import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:priority/alert_messenger.dart';
part 'alert_controller.g.dart';

class AlertController = AlertControllerBase with _$AlertController;

abstract class AlertControllerBase with Store {
  @observable
  ObservableList<Alert> alerts = ObservableList<Alert>.of([]);

  @computed
  String get priorityMessage => alerts.lastOrNull?.message ?? '';

  AnimationController? controller;

  @action
  showAlert(Alert alert) {
    if (!alerts.any((e) => e.priority == alert.priority)) {
      alerts.add(alert);
      alerts.sort();

      if (alerts.lastOrNull == alert) {
        controller?.reset();
        controller?.forward();
      }
    }
  }

  @action
  hideAlert() async {
    await controller?.reverse();

    if (alerts.isNotEmpty) {
      alerts.removeLast();
    }

    controller?.value = controller?.upperBound ?? 0;
  }
}
