//
//  ScanQRView.m
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import "ScanQRView.h"
#import  <AVFoundation/AVFoundation.h>

@interface ScanQRView ()<AVCaptureMetadataOutputObjectsDelegate>

@property(nonatomic,readwrite) bool isScaning;
@property(strong,nonatomic)AVCaptureSession * captureSession;
@property(strong,nonatomic)AVCaptureVideoPreviewLayer * vedioPreviewLayer;

@end

@implementation ScanQRView

#pragma mark - Propertys
- (AVCaptureSession *)captureSession {
    if (!_captureSession) {
        _captureSession = [[AVCaptureSession alloc] init];
    }
    return  _captureSession;
}

- (AVCaptureVideoPreviewLayer *)vedioPreviewLayer {
    if (!_vedioPreviewLayer) {
        _vedioPreviewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:_captureSession];
    }
    return _vedioPreviewLayer;
}
#pragma mark - QRScan function
- (BOOL)startScaning {
    NSError * error;
    AVCaptureDevice * captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    AVCaptureDeviceInput * deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice error:&error];
    if (!deviceInput) {
        if ([self.delegate respondsToSelector:@selector(DidFailToScanWithError:)]) {
            [self.delegate DidFailToScanWithError:error];
        }
        return NO;
    }
    [self.captureSession addInput:deviceInput];
    AVCaptureMetadataOutput * captureMetadataOutput = [[AVCaptureMetadataOutput alloc] init];
    [self.captureSession addOutput:captureMetadataOutput];
    dispatch_queue_t scanQRqueue;
    scanQRqueue = dispatch_queue_create("scanQRqueue",DISPATCH_QUEUE_SERIAL);
    [captureMetadataOutput setMetadataObjectsDelegate:self queue:scanQRqueue];
    [captureMetadataOutput setMetadataObjectTypes:@[AVMetadataObjectTypeQRCode]];
    [self.vedioPreviewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    [self.vedioPreviewLayer setFrame:self.layer.bounds];
    [self.layer addSublayer:self.vedioPreviewLayer];
    [self.captureSession startRunning];
    return YES;
}
-(void)stop{
    [self.captureSession stopRunning];
    self.isScaning = NO;
    self.captureSession = nil;
    [_vedioPreviewLayer removeFromSuperlayer];
}
#pragma mark - AVFoundation delegate method
-(void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection
{
    if (metadataObjects != nil && metadataObjects.count > 0) {
        AVMetadataMachineReadableCodeObject * metadataObject = [metadataObjects firstObject];
        if ([[metadataObject type] isEqualToString:AVMetadataObjectTypeQRCode]) {
            NSString * scanResult = [metadataObject stringValue];
            dispatch_async(dispatch_get_main_queue(), ^{
                if ([self.delegate respondsToSelector:@selector(DidGetScanWithResult:)]) {
                    [self.delegate DidGetScanWithResult:scanResult];
                }
            });
        }
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
