//
//  ImageCell.h
//  FlyweightPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "Cell.h"

NS_ASSUME_NONNULL_BEGIN

// 再创建ImageCell和TextCell两个类，都继承自Cell类，表示具体享元类
@interface ImageCell : Cell

@end

NS_ASSUME_NONNULL_END
