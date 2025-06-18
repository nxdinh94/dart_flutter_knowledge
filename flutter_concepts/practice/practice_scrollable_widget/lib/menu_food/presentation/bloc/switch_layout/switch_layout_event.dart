import 'package:freezed_annotation/freezed_annotation.dart';

part 'switch_layout_event.freezed.dart';

@freezed
class SwitchLayoutEvent with _$SwitchLayoutEvent {
  const factory SwitchLayoutEvent.toGrid() = SwitchLayoutToGridEvent;
  const factory SwitchLayoutEvent.toList() = SwitchLayoutToListEvent;
}
