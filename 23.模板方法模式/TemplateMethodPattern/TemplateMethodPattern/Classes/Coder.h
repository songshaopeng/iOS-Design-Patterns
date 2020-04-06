//
//  Coder.h
//  TemplateMethodPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 程序猿：抽象类
@interface Coder : NSObject
- (void)work; //模板方法
- (void)startComputer; //具体方法
- (void)coding; //抽象方法，OC没有abstract这个关键字，这里选择不实现方法
- (void)closeComputer; //具体方法
- (BOOL)isNeedCloseComputer; //钩子方法
@end

NS_ASSUME_NONNULL_END
