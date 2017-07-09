//
//  ScanQRView.h
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ScanQRDelegate <NSObject>
/*!
 * @discussion Delegate method when scan QR successed
 * @param QRContent Scan result
 */

-(void)DidGetScanWithResult:(NSString *)QRContent;
/*!
 * @discussion Delegate method when scan QR failed
 * @param error Error message
 */
-(void)DidFailToScanWithError:(NSError *)error;
@end

@interface ScanQRView : UIView
@property (nonatomic, readonly) bool isScaning;
@property (nonatomic, weak) id<ScanQRDelegate> delegate;
-(BOOL)startScaning;
-(void)stop;
@end
