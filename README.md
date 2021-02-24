<!-- header section -->
<p align="center">
  <span><b>Flutter Flavors by Dart Define 🍦 </b></span><br/>
</p>
<!-- header section END -->

<br/>

<!-- show case/gif section -->
<p align="center">
    <img alt="Flavor - iOS"  src="https://i.imgur.com/rhiTHWj.png" />
    <img alt="Flavor - Android" height="620" src="https://i.imgur.com/QuiY117.png" />
</p>
<!-- show case/gif section END -->

<br/>

<!-- about app and course section -->

## About this app 🗣

A simple app showing how to use Flavors using Dart Defines (Thanks [DeividWillyan](https://github.com/DeividWillyan/) for this [helper](https://github.com/DeividWillyan/Flutter-Auto-Flavors)) and show a flavor banner.

## Flavor - Dev 
```
flutter run --dart-define=DEFINE_APP_NAME='[DEV] App Flavor' --dart-define=DEFINE_APP_SUFFIX=.dev 
```

<p align="center">
    <img alt="Flavor - iOS"  src="https://i.imgur.com/uemigzf.png" />
</p>

## Flavor - QA 
```
flutter run --dart-define=DEFINE_APP_NAME='[QA] App Flavor' --dart-define=DEFINE_APP_SUFFIX=.qa
```

<p align="center">
    <img alt="Flavor - iOS"  src="https://i.imgur.com/BO870qE.png" />
</p>

## Prod (no flavor)

<p align="center">
    <img alt="Flavor - iOS"  src="https://i.imgur.com/FEVSIVF.png" />
</p>

## Running on VsCode (launch.json)

If you wanna run this app on vsCode, just Copy/Paste this code bellow on your `launch.json` on vsCode:

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch development",
            "request": "launch",
            "type": "dart",
            "args": [
                "--dart-define",
                "DEFINE_APP_NAME=[DEV] App Flavor",
                "--dart-define",
                "DEFINE_APP_SUFFIX=.dev"
            ],
        },
        {
            "name": "Launch qa",
            "request": "launch",
            "type": "dart",
            "args": [
                "--dart-define",
                "DEFINE_APP_NAME=[QA] App Flavor",
                "--dart-define",
                "DEFINE_APP_SUFFIX=.qa"
            ],
        },
        {
            "name": "Launch production",
            "request": "launch",
            "type": "dart",
            "console": "debugConsole",
        }
    ]
}
```

## Tech Stack 👩🏾‍💻

- [Dart](https://dart.dev/)
- [Flutter](https://flutter.dev/)

## Plugins 📟

- [package_info](https://pub.dev/packages/package_info)

<!-- about app and course section END -->

