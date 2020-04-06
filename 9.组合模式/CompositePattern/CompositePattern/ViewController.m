//
//  ViewController.m
//  CompositePattern
//
//  Created by 宋绍鹏 on 2020/4/6.
//  Copyright © 2020 songShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteCompany.h"
#import "HRDepartment.h"
#import "ITDepartment.h"
#import "ServiceDepartment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ConcreteCompany *apple = [[ConcreteCompany alloc] initWithName:@"苹果公司"];
    ConcreteCompany *AmericanCompany = [[ConcreteCompany alloc] initWithName:@"美国分公司"];
    ConcreteCompany *ChinaCompany = [[ConcreteCompany alloc] initWithName:@"中国分公司"];
    [apple add:AmericanCompany];
    [apple add:ChinaCompany];
    
    [ChinaCompany add:[[ServiceDepartment alloc] initWithName:@"中国分部客服部门"]];
    
    [AmericanCompany add:[[HRDepartment alloc] initWithName:@"美国分部HR部门"]];
    [AmericanCompany add:[[ITDepartment alloc] initWithName:@"美国分部IT部门"]];
    [AmericanCompany add:[[ServiceDepartment alloc] initWithName:@"美国分部客服部门"]];
    
    [apple work];
//    [AmericanCompany work];
//    [ChinaCompany work];
    
    /**
     打印结果：
     
     苹果公司-----------
     美国分公司-----------
     美国分部HR部门：give an offer
     美国分部IT部门：coding
     美国分部客服部门：call customers
     中国分公司-----------
     中国分部客服部门：call customers
     */
}


@end
