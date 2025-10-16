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
xcodebuild -project SummitAI/SummitAI.xcodeproj \
           -scheme SummitAI \
           -destination 'platform=iOS Simulator,name=iPhone 15,OS=latest' \
           -configuration Debug \
           build

echo "✅ Build completed successfully!"
