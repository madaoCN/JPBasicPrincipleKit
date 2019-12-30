//
//  JPAppView.m
//  02-设计模式-MVC(变种)
//
//  Created by 周健平 on 2019/12/29.
//  Copyright © 2019 周健平. All rights reserved.
//

#import "JPAppView.h"
#import "JPApp.h"

@interface JPAppView ()

@end

@implementation JPAppView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIImageView *iconView = ({
            UIImageView *aImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
            aImgView;
        });
        [self addSubview:iconView];
        _iconView = iconView;
        
        UILabel *nameLabel = ({
            UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 100, 30)];
            aLabel.textAlignment = NSTextAlignmentCenter;
            aLabel;
        });
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.delegate respondsToSelector:@selector(appViewDidClick:)]) {
        [self.delegate appViewDidClick:self];
    }
}

@end
