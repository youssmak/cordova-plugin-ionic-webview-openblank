//
//  CDVWKWebViewUIDelegate+OpenBlank.m
//  Nyheder
//
//  Created by Alejandro Paredes Alva on 09/03/16.
//
//

#import "CDVWKWebViewUIDelegate+OpenBlank.h"

@implementation CDVWKWebViewUIDelegate (OpenBlank)
- (WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    if (!navigationAction.targetFrame.isMainFrame) {
      NSURL *url = [[navigationAction request] URL];
      UIApplication *application = [UIApplication sharedApplication];
      if ([application canOpenURL:url]) {
        [application openURL:url];
      }
    }
    return nil;
}
@end
