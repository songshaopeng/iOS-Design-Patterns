//
//  Image.h
//  BridgePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageImp.h"

NS_ASSUME_NONNULL_BEGIN

// Image抽象类, 表示Abstraction抽象类
@interface Image : NSObject
@property(nonatomic, strong, readonly) ImageImp imageImp;
- (instancetype)initWithImageImp:(ImageImp)imageImp; //通过初始化方法导入并拥有一个Implementor的子类
- (void)showDifferentImage;
@end

NS_ASSUME_NONNULL_END
