#! /usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Keyboard > Key Repeat
defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard > Delay Until Repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Set mouse and scrolling speed.
defaults write NSGlobalDomain com.apple.mouse.scaling -int 3
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 3
defaults write NSGlobalDomain com.apple.scrollwheel.scaling -float 0.6875

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Sets displaysleep to 30 minutes
sudo pmset -a displaysleep 30

# Do not allow machine to sleep on charger
#sudo pmset -c sleep 0

# Set machine sleep to 5 minutes on battery
#sudo pmset -b sleep 5

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "zh-Hans-CN" "en"
defaults write NSGlobalDomain AppleLocale -string "zh_CN"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# System Preferences > Accessibility > Mouse & Trackpad > Trackpad options
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

defaults write com.apple.AppleMultitouchTrackpad Dragging -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -bool false

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → no-op
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → no-op
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → no-op
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner → Desktop
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Finder > Preferences > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Hide warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > Preferences > Hide warning before removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

# Finder > View > As Column
# icnv(Icon),Nlsv(List),glyv(gallery)
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathBar -bool false

# Set ${HOME} as the default location for new Finder windows
# Computer     : `PfCm`
# Volume       : `PfVo`
# $HOME        : `PfHm`
# Desktop      : `PfDe`
# Documents    : `PfDo`
# All My Files : `PfAF`
# For other paths, use `PfLo` and `file:///full/path/here/`(无效,已修改，待再次测试)
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool false
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool false
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool false

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Safari > Preferences > Advanced
#defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Show the full URL in the address bar (note: this still hides the scheme)（无效）
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Show Safari’s bookmarks bar by default（无效,修改待测试）
defaults write com.apple.Safari ShowFavoritesBar -bool true
defaults write com.apple.Safari ShowFavoritesBar-v2 -bool true

# Safari: show status bar(须测试)（无效,修改待测试）
defaults write com.apple.Safari ShowStatusBar -bool true
defaults write com.apple.Safari ShowOverlayStatusBar -bool true
defaults write com.apple.Safari ShowStatusBarInFullScreen -bool true

# Safari: Enable the Develop menu and the Web Inspector in Safari (待测试)
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Kill affected apps
for app in "Dock" "Finder" "Safari"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
echo "已完成所有配置，重启后生效..."