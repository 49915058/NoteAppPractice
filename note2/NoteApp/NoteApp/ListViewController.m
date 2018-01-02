//
//  ListViewController.m
//  NoteApp
//
//  Created by SSD on 2017/12/30.
//  Copyright © 2017年 classroom. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property(nonatomic) NSMutableArray<Note *> *data;
@end

@implementation ListViewController
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.data=[NSMutableArray array];
        self.navigationItem.leftBarButtonItem=self.editButtonItem;
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.dataSource=self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    return self.data.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    UITableViewCell *cell=[self.tableview dequeueReusableCellWithIdentifier:@"notecell" forIndexPath:indexPath];
    cell.textLabel.text=self.data[indexPath.row].text;
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;{
    [self.data removeObjectAtIndex:indexPath.row];
    [self.tableview deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES];
    
    
}
- (IBAction)add:(id)sender {
    Note *note=[Note new];
    note.text=@"新增";
    [self.data insertObject:note atIndex:0];
    [self.tableview insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:YES];
    
}

-(void)setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:YES animated:YES];
    [self.tableview setEditing:YES animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
