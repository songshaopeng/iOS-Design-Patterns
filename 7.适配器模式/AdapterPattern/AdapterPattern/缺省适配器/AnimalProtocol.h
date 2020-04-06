//
//  AnimalProtocol.h
//  AdapterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// ServiceInterface适配者接口
@protocol AnimalProtocol <NSObject>
- (void)eat;
- (void)run;
- (void)swim;
@end

NS_ASSUME_NONNULL_END
