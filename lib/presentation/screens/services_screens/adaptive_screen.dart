import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';

/// Builder Function 
typedef AdaptiveWidgetBuilder<DeviceTypeEnum> = Widget Function(
    BuildContext, DeviceTypeEnum);

class AdaptivePageBuilder extends StatefulWidget {
  final AdaptiveWidgetBuilder<DeviceTypeEnum> builder;

  const AdaptivePageBuilder({
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  State<AdaptivePageBuilder> createState() => _AdaptivePageBuilderState();
}

class _AdaptivePageBuilderState extends State<AdaptivePageBuilder>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
	  /// Registers the observer
    WidgetsBinding.instance.addObserver(this);
    /// Schedules a first `didChangeMetrics` to decide on the device type
    WidgetsBinding.instance.addPostFrameCallback((_) => didChangeMetrics());

    /// Attempts to get initial device type
    _currentType = _getDeviceType;
  }

  late DeviceTypeEnum _currentType;

  /// Calculates the device-independent width
  double? get _width => WidgetsBinding.instance != null
      ? WidgetsBinding.instance!.window.physicalSize.width /
          WidgetsBinding.instance!.window.devicePixelRatio
      : null;

  /// Decides which UI we should show depending on the width of the screen
  DeviceTypeEnum get _getDeviceType {
    if ((_width ?? 0) < 700) {
      return DeviceTypeEnum.mobile;
    }
    return DeviceTypeEnum.desktop;
  }

  /// Calculate the new width of the screen and, if necessary, change
  /// the current device type
  @override
  void didChangeMetrics() {
    final newType = _getDeviceType;

    if (newType != _currentType) {
      _currentType = newType;
      setState(() {});
    }
  }

  /// Builds the children with the given BuildContext and the DeviceTypeEnum
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _currentType);
  }
}