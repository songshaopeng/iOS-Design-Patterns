//
//  ViewController.m
//  InterpreterPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Context.h"
#import "DirectionExpression.h"
#import "AndExpression.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 实现英语翻译成中文的效果
    Context *context = [Context new];
    DirectionExpression *leftDir = [[DirectionExpression alloc] initWithDirection:@"left"];
    DirectionExpression *rightDir = [[DirectionExpression alloc] initWithDirection:@"right"];
    NSLog(@"终结符表达式：%@", [leftDir interpretWithContext:context]);
    
    AndExpression *andExp = [[AndExpression alloc] initWithLeft:leftDir right:rightDir];
    NSLog(@"非终结符表达式：%@", [andExp interpretWithContext:context]);
    
    /**
     打印结果：
     
     终结符表达式：[向左]
     非终结符表达式：[向左] 再 [向右]
     */
}


@end
