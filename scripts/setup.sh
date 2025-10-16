#!/bin/bash

# SummitAI Development Environment Setup Script
# This script sets up the development environment for SummitAI

set -e

echo "🏔️  Setting up SummitAI development environment..."

# Check if we're in the right directory
if [ ! -f "SummitAI/SummitAIApp.swift" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Check for required tools
echo "🔍 Checking for required tools..."

# Check for Xcode
if ! command -v xcodebuild &> /dev/null; then
    echo "❌ Error: Xcode is not installed or not in PATH"
    echo "Please install Xcode from the App Store"
    exit 1
fi

# Check for Git
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed"
    exit 1
fi

# Check for GitHub CLI
if ! command -v gh &> /dev/null; then
    echo "⚠️  Warning: GitHub CLI is not installed"
    echo "Install it with: brew install gh"
fi

echo "✅ All required tools are available"

# Create .env file if it doesn't exist
if [ ! -f ".env" ]; then
    echo "📝 Creating .env file from template..."
    cp .env.example .env
    echo "✅ .env file created. Please update it with your actual values."
else
    echo "✅ .env file already exists"
fi

# Set up Git hooks
echo "🔧 Setting up Git hooks..."
mkdir -p .git/hooks

# Pre-commit hook
cat > .git/hooks/pre-commit << 'EOF'
#!/bin/bash
# Pre-commit hook for SummitAI

echo "Running pre-commit checks..."

# Check for TODO/FIXME comments in committed files
if git diff --cached --name-only | xargs grep -l "TODO\|FIXME" 2>/dev/null; then
    echo "⚠️  Warning: Found TODO/FIXME comments in committed files"
    echo "Consider addressing them before committing"
fi

# Check for console.log statements (if any JS/TS files)
if git diff --cached --name-only | grep -E '\.(js|ts|jsx|tsx)$' | xargs grep -l "console\.log" 2>/dev/null; then
    echo "⚠️  Warning: Found console.log statements in committed files"
    echo "Consider removing them before committing"
fi

echo "✅ Pre-commit checks completed"
EOF

chmod +x .git/hooks/pre-commit

# Create development scripts directory
mkdir -p scripts

# Build script
cat > scripts/build.sh << 'EOF'
#!/bin/bash
# Build script for SummitAI

set -e

echo "🏗️  Building SummitAI..."

# Clean build folder
echo "🧹 Cleaning build folder..."
rm -rf build/
mkdir -p build/

# Build for iOS Simulator
echo "📱 Building for iOS Simulator..."
xcodebuild -project SummitAI.xcodeproj \
           -scheme SummitAI \
           -destination 'platform=iOS Simulator,name=iPhone 15,OS=latest' \
           -configuration Debug \
           build

echo "✅ Build completed successfully!"
EOF

chmod +x scripts/build.sh

# Test script
cat > scripts/test.sh << 'EOF'
#!/bin/bash
# Test script for SummitAI

set -e

echo "🧪 Running SummitAI tests..."

# Run unit tests
echo "🔬 Running unit tests..."
xcodebuild -project SummitAI.xcodeproj \
           -scheme SummitAI \
           -destination 'platform=iOS Simulator,name=iPhone 15,OS=latest' \
           -configuration Debug \
           test

echo "✅ All tests passed!"
EOF

chmod +x scripts/test.sh

# Lint script
cat > scripts/lint.sh << 'EOF'
#!/bin/bash
# Lint script for SummitAI

set -e

echo "🔍 Running SummitAI linter..."

# Check Swift files for common issues
echo "📝 Checking Swift files..."

# Find all Swift files
find SummitAI -name "*.swift" -type f | while read -r file; do
    echo "Checking $file..."
    
    # Check for force unwrapping
    if grep -n "!" "$file" | grep -v "//.*!" | grep -v "!= "; then
        echo "⚠️  Warning: Found force unwrapping in $file"
    fi
    
    # Check for TODO/FIXME
    if grep -n "TODO\|FIXME" "$file"; then
        echo "📋 Found TODO/FIXME in $file"
    fi
done

echo "✅ Linting completed"
EOF

chmod +x scripts/lint.sh

echo ""
echo "🎉 Development environment setup completed!"
echo ""
echo "Next steps:"
echo "1. Update .env file with your actual configuration values"
echo "2. Open SummitAI.xcodeproj in Xcode"
echo "3. Run the app in the iOS Simulator"
echo ""
echo "Available scripts:"
echo "- scripts/setup.sh: Setup development environment"
echo "- scripts/build.sh: Build the project"
echo "- scripts/test.sh: Run tests"
echo "- scripts/lint.sh: Run linting checks"
echo ""
echo "Happy coding! 🏔️"
