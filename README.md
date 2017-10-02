# Cordova Plugin Ionic WebView OpenBlank

## Install
cordova plugin add https://github.com/youssmak/cordova-plugin-ionic-webview-openblank

## Info
For security reasons, WKWebViews doesn't allow `window.open('https://google.com', '_blank')` to open. If it did it will take over the WKWebView. This plugin catches the request of `window.open+_blank` and sends the url to Safari.

This plugin has a dependency with ionic webview plugin:
https://github.com/ionic-team/cordova-plugin-ionic-webview

Forked from :
https://www.npmjs.com/package/cordova-plugin-wkwebview-openblank
