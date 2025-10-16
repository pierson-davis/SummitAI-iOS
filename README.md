# SummitAI - Mountain Climbing Fitness App

🏔️ **SummitAI** is a comprehensive native iOS app designed for mountain climbing enthusiasts to track their fitness journey, discover new peaks, and connect with the climbing community.

## 🚀 Features

- **Climb Tracking**: Record and track your mountain climbing activities
- **Fitness Analytics**: Comprehensive health and fitness metrics integration
- **Route Discovery**: Find new climbing routes and peaks
- **Progress Tracking**: Monitor your climbing achievements and milestones
- **Community**: Connect with fellow climbers
- **Weather Integration**: Real-time weather conditions for safe climbing
- **Photo Sharing**: Capture and share your mountain adventures

## 🏗️ Architecture

- **Framework**: SwiftUI with iOS 17.0+
- **Architecture**: MVVM (Model-View-ViewModel)
- **Backend**: Firebase (Authentication, Firestore, Storage)
- **Payments**: Superwall integration
- **Analytics**: Firebase Analytics
- **Maps**: MapKit integration
- **Health**: HealthKit integration

## 📱 Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+
- macOS 14.0+ (for development)

## 🛠️ Development Setup

### Prerequisites

1. **Xcode**: Install from the App Store
2. **Git**: For version control
3. **GitHub CLI**: For repository management (optional)
   ```bash
   brew install gh
   ```

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/pierson-davis/SummitAI-iOS.git
   cd SummitAI-iOS
   ```

2. **Set up development environment**:
   ```bash
   ./scripts/setup.sh
   ```

3. **Configure environment variables**:
   - Copy `.env.example` to `.env`
   - Fill in your Firebase and API credentials

4. **Open in Xcode**:
   ```bash
   open SummitAI/SummitAI.xcodeproj
   ```

## 📂 Project Structure

```
SummitAI/
├── SummitAI.xcodeproj/          # Xcode project file
├── SummitAI/                    # Main app target
│   ├── Models/                  # Data models
│   │   ├── User.swift
│   │   ├── Climb.swift
│   │   └── ...
│   ├── Views/                   # SwiftUI views
│   │   ├── ContentView.swift
│   │   └── ...
│   ├── ViewModels/              # View models
│   │   ├── UserViewModel.swift
│   │   └── ...
│   ├── Services/                # Business logic
│   │   ├── UserService.swift
│   │   └── ...
│   ├── Assets.xcassets/         # App assets
│   ├── Info.plist              # App configuration
│   └── SummitAIApp.swift       # App entry point
├── scripts/                    # Development scripts
│   ├── setup.sh               # Environment setup
│   ├── build.sh               # Build script
│   └── test.sh                # Test script
└── docs/                      # Documentation
```

## 🧪 Testing

Run the test suite:
```bash
./scripts/test.sh
```

Or run tests in Xcode:
- Press `Cmd + U` or go to Product → Test

## 🔧 Development Scripts

- `scripts/setup.sh`: Set up development environment
- `scripts/build.sh`: Build the project
- `scripts/test.sh`: Run tests
- `scripts/lint.sh`: Run linting checks

## 📋 Development Workflow

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** and test them

3. **Commit your changes**:
   ```bash
   git add .
   git commit -m "[Cursor] Feature: Description of changes"
   ```

4. **Push to GitHub**:
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request** on GitHub

## 🎨 Design System

SummitAI follows Apple's Human Interface Guidelines with a focus on:
- **Accessibility**: Full VoiceOver and Dynamic Type support
- **Dark Mode**: Native dark mode support
- **Responsive Design**: Optimized for all iOS device sizes
- **Native Feel**: SwiftUI components with Apple's design language

## 🔐 Security

- **Authentication**: Firebase Authentication with Apple Sign-In
- **Data Protection**: End-to-end encryption for sensitive data
- **Privacy**: GDPR and CCPA compliant
- **Secure Storage**: Keychain integration for credentials

## 📊 Analytics & Monitoring

- **Crash Reporting**: Firebase Crashlytics
- **Analytics**: Firebase Analytics
- **Performance**: Firebase Performance Monitoring
- **User Feedback**: Integrated feedback system

## 🚀 Deployment

### App Store Deployment

1. **Archive the app** in Xcode
2. **Upload to App Store Connect**
3. **Submit for review**

### TestFlight Distribution

1. **Create a build** in Xcode
2. **Upload to TestFlight**
3. **Invite testers**

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Issues**: [GitHub Issues](https://github.com/pierson-davis/SummitAI-iOS/issues)
- **Discussions**: [GitHub Discussions](https://github.com/pierson-davis/SummitAI-iOS/discussions)
- **Email**: support@summitai.app

## 🗺️ Roadmap

- [ ] **Phase 1**: Core app structure and basic functionality ✅
- [ ] **Phase 2**: User authentication and profiles
- [ ] **Phase 3**: Climb tracking and recording
- [ ] **Phase 4**: Social features and community
- [ ] **Phase 5**: Advanced analytics and insights
- [ ] **Phase 6**: Premium features and monetization

## 🙏 Acknowledgments

- Apple for the amazing SwiftUI framework
- Firebase for backend services
- The open-source community for inspiration and tools

---

**Built with ❤️ for the mountain climbing community** 🏔️
