# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

**所有的回答都是用简体中文回答。**
**本项目优先以原生代码为主，少插件，多实践框架本身的美**


## Project Overview

MyEmotion (键盘语录) is a non-invasive psychological state regulation ecosystem. It collects data from computer usage (keyboard, mouse) and biological signals to detect emotional states, then uses environmental hints (colors, sounds) to help users manage stress and burnout.

## Project Structure

```
MyEmotion/
├── laptop/        # Flutter desktop app (Windows/macOS) - Active
├── mobile-apps/   # Flutter mobile app - Planned
├── cloud-app/     # Cloud backend for data analysis - Planned
├── emotion-dev/   # C-based embedded device for bio signals - Planned
```

## Development Commands

All Flutter commands should be run from the `laptop/` directory:



```bash
cd laptop

# Install dependencies
flutter pub get

# Run on macOS
flutter run -d macos

# Run on Windows
flutter run -d windows

# Build release
flutter build macos
flutter build windows

# Run tests
flutter test

# Run linter
flutter analyze
```

## Architecture

### Flutter App Structure (laptop/)
- `lib/main.dart` - App entry point, MaterialApp configuration
- `lib/pages/` - Page widgets organized by feature
- `lib/common/` - Shared utilities and components
- `assets/images/` - Image assets
- `assets/videos/` - Video assets

### Design Philosophy
- Uses color psychology: blue (melancholy), red (anger), green (calm)
- Brightness indicates work state, dimness indicates rest
- Sound/chords for atmosphere (planned)
- Non-intrusive environmental cues instead of popup notifications

## Tech Stack
- Flutter SDK: ^3.8.1
- Platforms: macOS, Windows
- Linting: flutter_lints ^5.0.0

## Project Phases
1. Flutter UI development (current)
2. C-based PC data collection (keyboard, mouse)
3. Embedded device for biological signals
4. Cloud backend for analysis and reports
5. Data visualization and psychological hints
