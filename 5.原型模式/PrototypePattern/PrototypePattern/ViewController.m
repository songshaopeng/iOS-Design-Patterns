//
//  ViewController.m
//  PrototypePattern
//
//  Created by 宋绍鹏 on 2020/4/5.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 测试数组Array的copy方法
    NSArray *arr1 = [NSArray array];
    NSArray *arr2 = [arr1 copy];
    NSLog(@"arr1 = %p", arr1);
    NSLog(@"arr2 = %p", arr2);
    NSLog(@"----------------");
    
    Car *car1 = [[Car alloc] initWithName:@"兰博基尼"];
    Car *car2 = [car1 copy];
    Car *car3 = [car1 copy];
    car3.name = @"法拉利";
    
    NSLog(@"Car1 = %p，name = %@", car1, car1.name);
    NSLog(@"Car2 = %p，name = %@", car2, car2.name);
    NSLog(@"Car3 = %p，name = %@", car3, car3.name);
    NSLog(@"----------------");
    
    Person *person1 = [[Person alloc] initWithName:@"小明"];
    [person1 addCar:car1];
    [person1 addCar:car2];
    [person1 addCar:car3];
    
    Person *person2 = [person1 copy];
    NSLog(@"person1 = %p, count = %ld", person1, person1.carsCount);
    NSLog(@"person2 = %p, count = %ld", person2, person2.carsCount);
    NSLog(@"----------------");
    
    [person1 removeCar:car3];
    NSLog(@"person1 = %p, count = %ld", person1, person1.carsCount);
    NSLog(@"person2 = %p, count = %ld", person2, person2.carsCount);
    
    /**
     打印结果：
     
     // Array调用copy，地址一样，只是拷贝了指针，还是同一个对象
     arr1 = 0x7fff805efd90
     arr2 = 0x7fff805efd90
     ----------------
     // Car成功拷贝，地址都不同
     Car1 = 0x6000018bc350，name = 兰博基尼
     Car2 = 0x6000018bc300，name = 兰博基尼
     Car3 = 0x6000018bc340，name = 法拉利
     ----------------
     // Person成功拷贝，地址不同
     person1 = 0x600001aec000, count = 3
     person2 = 0x600001aec040, count = 3
     ----------------
     // 操作person1并不会影响到person2
     person1 = 0x600001aec000, count = 2
     person2 = 0x600001aec040, count = 3
     */
}


@end
