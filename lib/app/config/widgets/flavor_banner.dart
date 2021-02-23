import 'package:flutter/material.dart';

import '../flavor_config.dart';

class FlavorBanner extends StatefulWidget {
  final Widget child;
  final BannerConfig bannerConfig;

  FlavorBanner({@required this.child, this.bannerConfig});

  @override
  _FlavorBannerState createState() => _FlavorBannerState();
}

class _FlavorBannerState extends State<FlavorBanner> {
  BannerConfig _bannerConfig;
  @override
  void initState() {
    super.initState();

    _bannerConfig = widget.bannerConfig ?? _getDefaultBanner();
  }

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.isProduction()) return widget.child;

    return Stack(
      children: <Widget>[
        widget.child,
        _CustomBanner(bannerConfig: _bannerConfig, ctx: context)
      ],
    );
  }

  BannerConfig _getDefaultBanner() {
    return BannerConfig(
        bannerName: FlavorConfig.bannerName(),
        bannerColor: FlavorConfig.bannerColor());
  }
}

class _CustomBanner extends StatelessWidget {
  final BannerConfig bannerConfig;
  final BuildContext ctx;

  _CustomBanner({@required this.bannerConfig, @required this.ctx});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: CustomPaint(
        painter: BannerPainter(
          message: bannerConfig.bannerName,
          textDirection: Directionality.of(context),
          layoutDirection: Directionality.of(context),
          location: BannerLocation.topStart,
          color: bannerConfig.bannerColor,
        ),
      ),
    );
  }
}

class BannerConfig {
  final String bannerName;
  final Color bannerColor;

  BannerConfig({
    @required this.bannerName,
    @required this.bannerColor,
  });
}
