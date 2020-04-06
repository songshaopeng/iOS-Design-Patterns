//
//  ViewController.m
//  MementoPattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "Chessman.h"
#import "ChessmanMemento.h"
#import "MementoCaretaker.h"

@interface ViewController ()
@property(nonatomic, assign) NSInteger index; //备忘录索引
@property(nonatomic, strong) MementoCaretaker *caretaker; //负责人
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.index = -1;
    self.caretaker = [MementoCaretaker new];
    
    Chessman *chess = [[Chessman alloc] initWithName:@"车" x:1 y:1];
    [self playWithChess:chess];
    
    chess.y = 8;
    [self playWithChess:chess];
    
    chess.x = 6;
    [self playWithChess:chess];
    
    NSLog(@"------------------");
    [self undoWithChess:chess];
    [self undoWithChess:chess];
    
    /**
     打印结果：
     
     下棋啦，车当前位置：x = 1, y = 1
     下棋啦，车当前位置：x = 1, y = 8
     下棋啦，车当前位置：x = 6, y = 8
     ------------------
     悔棋啦，车当前位置：x = 1, y = 8
     悔棋啦，车当前位置：x = 1, y = 1
     */
}

// 下棋
- (void)playWithChess:(Chessman *)chess {
    ChessmanMemento *memento = [chess save];
    [self.caretaker addMemento:memento]; //保存备忘录
    self.index ++; //序号加1
    NSLog(@"下棋啦，%@当前位置：x = %ld, y = %ld", chess.name, chess.x, chess.y);
}

// 悔棋
- (void)undoWithChess:(Chessman *)chess {
    self.index --; //序号减1
    ChessmanMemento *memento = [self.caretaker getMemento:self.index];
    [chess restore:memento]; //恢复备忘录
    NSLog(@"悔棋啦，%@当前位置：x = %ld, y = %ld", chess.name, chess.x, chess.y);
}


@end
