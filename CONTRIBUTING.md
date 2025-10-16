# Contributing to SummitAI

Thank you for your interest in contributing to SummitAI! This document provides guidelines and information for contributors.

## 🤝 How to Contribute

### Reporting Bugs

1. **Check existing issues** first to avoid duplicates
2. **Use the bug report template** when creating a new issue
3. **Include detailed information**:
   - iOS version and device model
   - Steps to reproduce the issue
   - Expected vs actual behavior
   - Screenshots or videos if applicable

### Suggesting Features

1. **Check existing feature requests** to avoid duplicates
2. **Use the feature request template** when creating a new issue
3. **Provide detailed information**:
   - Clear description of the feature
   - Use cases and benefits
   - Potential implementation approach
   - Mockups or designs if available

### Code Contributions

1. **Fork the repository** and create a feature branch
2. **Follow the coding standards** outlined below
3. **Write tests** for new functionality
4. **Update documentation** as needed
5. **Submit a pull request** with a clear description

## 📋 Development Guidelines

### Code Style

- **Swift**: Follow Apple's Swift API Design Guidelines
- **SwiftUI**: Use modern SwiftUI patterns and best practices
- **Naming**: Use descriptive, self-documenting names
- **Comments**: Add comments for complex logic and public APIs

### Architecture

- **MVVM**: Follow the Model-View-ViewModel pattern
- **Combine**: Use Combine for reactive programming
- **Services**: Keep business logic in service classes
- **Models**: Use Codable for data models

### Testing

- **Unit Tests**: Write tests for all business logic
- **UI Tests**: Add UI tests for critical user flows
- **Coverage**: Maintain at least 80% code coverage
- **Mocking**: Use dependency injection for testable code

### Git Workflow

1. **Create feature branches** from `main`
2. **Use descriptive commit messages**:
   ```
   [Cursor] Feature: Add climb tracking functionality
   
   - Implement ClimbViewModel with Combine
   - Add climb recording UI components
   - Include unit tests for climb validation
   - Update documentation
   ```
3. **Keep commits atomic** and focused
4. **Rebase before merging** to maintain clean history

## 🛠️ Development Setup

### Prerequisites

- Xcode 15.0+
- iOS 17.0+ Simulator
- Git
- GitHub CLI (optional)

### Setup Steps

1. **Fork and clone** the repository
2. **Run setup script**:
   ```bash
   ./scripts/setup.sh
   ```
3. **Configure environment**:
   - Copy `.env.example` to `.env`
   - Add your Firebase credentials
4. **Open in Xcode**:
   ```bash
   open SummitAI/SummitAI.xcodeproj
   ```

### Running Tests

```bash
# Run all tests
./scripts/test.sh

# Run specific test suite
xcodebuild test -scheme SummitAI -destination 'platform=iOS Simulator,name=iPhone 15'
```

## 📝 Pull Request Process

### Before Submitting

- [ ] **Code compiles** without warnings
- [ ] **Tests pass** locally
- [ ] **Code follows** style guidelines
- [ ] **Documentation updated** if needed
- [ ] **No breaking changes** (or clearly documented)

### PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
- [ ] Unit tests added/updated
- [ ] UI tests added/updated
- [ ] Manual testing completed

## Screenshots
(if applicable)

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No breaking changes
```

### Review Process

1. **Automated checks** must pass
2. **Code review** by maintainers
3. **Testing** on multiple devices
4. **Documentation review**
5. **Approval** and merge

## 🏷️ Release Process

### Version Numbering

We follow [Semantic Versioning](https://semver.org/):
- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

### Release Checklist

- [ ] **Version bumped** in project settings
- [ ] **Changelog updated** with new features/fixes
- [ ] **Tests passing** on all target devices
- [ ] **Documentation updated**
- [ ] **App Store metadata** updated
- [ ] **Release notes** prepared

## 📚 Documentation

### Code Documentation

- **Public APIs**: Use Swift documentation comments
- **Complex logic**: Add inline comments
- **Architecture decisions**: Document in ADR files
- **API changes**: Update API documentation

### User Documentation

- **README**: Keep installation and setup instructions current
- **User Guide**: Update with new features
- **FAQ**: Maintain common questions and answers
- **Release Notes**: Document all changes

## 🐛 Bug Triage

### Priority Levels

- **P0 - Critical**: App crashes, data loss, security issues
- **P1 - High**: Major functionality broken, performance issues
- **P2 - Medium**: Minor bugs, UI issues
- **P3 - Low**: Enhancement requests, nice-to-haves

### Response Times

- **P0**: 24 hours
- **P1**: 72 hours
- **P2**: 1 week
- **P3**: 2 weeks

## 💬 Communication

### Channels

- **GitHub Issues**: Bug reports and feature requests
- **GitHub Discussions**: General questions and ideas
- **Pull Requests**: Code-related discussions

### Code of Conduct

- **Be respectful** and inclusive
- **Be constructive** in feedback
- **Be patient** with newcomers
- **Be collaborative** in problem-solving

## 🎯 Contribution Areas

### High Priority

- **Bug fixes** and performance improvements
- **Accessibility** enhancements
- **Test coverage** improvements
- **Documentation** updates

### Medium Priority

- **New features** aligned with roadmap
- **UI/UX improvements**
- **Code refactoring**
- **Developer experience** improvements

### Low Priority

- **Nice-to-have features**
- **Cosmetic improvements**
- **Optimization** for edge cases

## 🏆 Recognition

Contributors will be recognized in:
- **README** contributors section
- **Release notes** for significant contributions
- **GitHub** contributor graph
- **Community** acknowledgments

## 📞 Getting Help

If you need help:
1. **Check the documentation** first
2. **Search existing issues** for similar problems
3. **Ask in GitHub Discussions** for general questions
4. **Create an issue** for bugs or feature requests

## 🙏 Thank You

Your contributions make SummitAI better for everyone in the mountain climbing community. Thank you for helping us build something amazing! 🏔️
