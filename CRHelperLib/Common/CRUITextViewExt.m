//
//  CRUITextViewExt.m
//  CRHelperLib
//
//  Created by 周文涛 on 2020/3/6.
//  Copyright © 2020 Crazs. All rights reserved.
//

#import "CRUITextViewExt.h"

#define D_placeholderLabel @"_placeholderLabel"

@implementation UITextView(CRExt)

- (void)setPlaceholder:(NSString *)placeholder{
    
    UILabel *placeHolderLabel = [[UILabel alloc] init];
    placeHolderLabel.text = placeholder;
    placeHolderLabel.numberOfLines = 0;
    placeHolderLabel.textColor = [UIColor lightGrayColor];
    [placeHolderLabel sizeToFit];
    [self addSubview:placeHolderLabel];
    placeHolderLabel.font = self.font;
    [self setValue:placeHolderLabel forKey:D_placeholderLabel];
}

- (NSString *)placeholder{
    UILabel * placeHolderLabel = (UILabel *)[self valueForKey:D_placeholderLabel];
    if (placeHolderLabel) {
        return placeHolderLabel.text;
    }
    return nil;
}

@end
