//
//  CloneProtocol.h
//  PrototypePattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Car;
// 协议声明出来的是方法，虽然看起来是属性，其实只有 getter、setter 这两个方法，内部是没有实例变量的
@protocol CloneProtocol <NSObject>
@property(nonatomic, copy) NSString *name;
@property(nonatomic, assign, readonly) NSInteger carsCount;
-(id)copy;
-(id)initWithName:(NSString *)name;
-(void)addCar:(Car *)car;
-(void)removeCar:(Car *)car;
@end

NS_ASSUME_NONNULL_END
