//
//  PAYSectionsViewController.m
//  Example
//
//  Created by Simon Seyer on 25.04.14.
//  Copyright (c) 2014 Paij. All rights reserved.
//

#import "PAYSectionsViewController.h"

@interface PAYSectionsViewController ()

@end

@implementation PAYSectionsViewController

- (void)loadStructure:(PAYFormTableBuilder *)tableBuilder {
    [tableBuilder addSectionWithContentBlock:^(PAYFormSectionBuilder * sectionBuilder) {
        [sectionBuilder addButtonWithText:@"Section with label style empty"
                                    style:PAYFormButtonStyleDisabledCentered
                           selectionBlock:nil];
    }];
    
    [tableBuilder addSectionWithLabelStyle:PAYFormTableLabelStyleNone
                              contentBlock:^(PAYFormSectionBuilder * sectionBuilder) {
        [sectionBuilder addButtonWithText:@"Section with label style none"
                                    style:PAYFormButtonStyleDisabledCentered
                           selectionBlock:nil];
    }];
    
    [tableBuilder addSectionWithName:@"Label style simple (default)"
                        contentBlock:^(PAYFormSectionBuilder * sectionBuilder) {
        [sectionBuilder addButtonWithText:@"Section with label style simple"
                                    style:PAYFormButtonStyleDisabledCentered
                           selectionBlock:nil];
                          }];
    
    [tableBuilder addSectionWithName:@"Section with label style description and without any content."
                          labelStyle:PAYFormTableLabelStyleDescription
                        contentBlock:nil];
    
    [tableBuilder addSectionWithName:@"Section with label style description wide and without any content."
                          labelStyle:PAYFormTableLabelStyleDescriptionWide
                        contentBlock:nil];
    
    PAYHeaderView *header = [[PAYHeaderView alloc]initWithFrame:self.view.frame];
    header.iconImage = [UIImage imageNamed:@"header"];
    header.title = @"Test";
    header.subTitle = @"Dies ist ein Test";
    self.tableView.tableHeaderView = header;
}

@end
