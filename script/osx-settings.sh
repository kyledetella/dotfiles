#!/usr/bin/env bash
set -e
set -u

# most of this is stolen from these two Cool things:
# - http://mths.be/osx
# - http://git.io/nNyX9g

# general interface
# -----------------

# expand save and print panels by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# quit printer app after you're done
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# I hate colors and fun
defaults write NSGlobalDomain AppleAquaColorVariant -int 6

# speed up dialog boxes
defaults write NSGlobalDomain NSWindowResizeTime 0.1

# require password 5 seconds after sleep
defaults write com.apple.screensaver 'askForPassword' -int 1
defaults write com.apple.screensaver 'askForPasswordDelay' -int 5

# menu bar should be transparent
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool true

# light up that keyboard, dark after 60 secnods
defaults write com.apple.BezelServices kDim -bool true
defaults write com.apple.BezelServices kDimTime -int 60

# power settings
# --------------

# don't automatically adjust brightness
defaults write com.apple.BezelServices 'dAuto' -bool false

# never resume
# defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false
# defaults write com.apple.loginwindow TALLogoutSavesState -bool false
# defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

# don't disable inactive apps
# defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# keyboard and mouse
# ------------------

# no press-and-hold stuff, nor autocorrect
# defaults write -g ApplePressAndHoldEnabled -bool false
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# enable keyboard access everywhere
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# HOW FAST YOU WANT THOSE KEYS TO REPEAT???
defaults write NSGlobalDomain KeyRepeat -int 0

# trackpad tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# scroll correctly
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# no Launchpad gesture
# defaults write com.apple.dock 'showLaunchpadGestureEnabled' -bool false

# Finder
# ------

# let me quit you
defaults write com.apple.finder QuitMenuItem -bool true

# goodbye, stuff on desktop
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop 0
# defaults write com.apple.finder ShowHardDrivesOnDesktop 0
# defaults write com.apple.finder ShowMountedServersOnDesktop 0
# defaults write com.apple.finder ShowRemovableMediaOnDesktop 0

# list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# empty trash securely and fearlessly
defaults write com.apple.finder EmptyTrashSecurely -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# use current directory as default search scope
# defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# display full path in Finder windows
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# defaults write com.apple.finder ShowPathbar -bool true

# no status bar in Finder
# defaults write com.apple.finder ShowStatusBar -bool false

# text in Quick Look is selectable
# defaults write com.apple.finder QLEnableTextSelection -bool true

# disable Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Use all interfaces with AirDrop
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# show ~/Library
chflags nohidden ~/Library

# stop .DS_Store on networks
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# shut up, Time Machine
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
sudo tmutil disablelocal

# disable "hey um did you not wanna open this, it's from Internet"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# destroy recent items because I have used it 0 times
# osascript -e 'tell application "System Events" to tell appearance preferences to set recent applications limit to 0'
# osascript -e 'tell application "System Events" to tell appearance preferences to set recent documents limit to 0'
# osascript -e 'tell application "System Events" to tell appearance preferences to set recent servers limit to 0'

# Finder can shut its got'damn mouth. At least Windows Explorer isn't loud
defaults write com.apple.finder 'FinderSounds' -bool false

# Dock
# ----

# pin Dock to middle, make it the right size
defaults write com.apple.dock pinning -string middle
defaults write com.apple.dock tilesize -int 32

# show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# nó Dóck éxpósé
defaults write com.apple.dock show-expose-menus -boolean no

# disable Dock bouncing
defaults write com.apple.dock launchanim -bool false

# faster showing of the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.5

# disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# I never use Safari, but...
# --------------------------

# no Safari bookmark bar
defaults write com.apple.Safari ShowFavoritesBar -bool false

# backspace goes back in Safari
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# developer stuff (debug, develop menu, web inspector)
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# misc.
# -----

# check for updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# disable startup bloop
sudo nvram SystemAudioVolume=%80

# MacVim tabs
defaults write org.vim.MacVim MMTabOptimumWidth 180

# plain text for TextEdit
defaults write com.apple.TextEdit RichText -int 0

# install userscripts from cool places into Chrome
defaults write com.google.Chrome ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"
defaults write com.google.Chrome.canary ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"

# lower screensharing image quality to 16-bit for MAXIMUM SPEED
defaults write com.apple.ScreenSharing controlObserveQuality 4

# screenshots should be PNG "screen" not "Screen Shot", and on Desktop
defaults write com.apple.screencapture name "screen"
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"

# all done!
# ---------

killall Finder
killall Dock
killall SystemUIServer
