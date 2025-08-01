//
//  View+MASAdditions.m
//  Masonry
//
//  Created by Jonas Budelmann on 20/07/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "View+MASAdditions.h"
#import <objc/runtime.h>

@implementation MAS_VIEW (MASAdditions)

- (NSArray *)mas_makeConstraints:(void (NS_NOESCAPE^)(MASConstraintMaker *))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    MASConstraintMaker *constraintMaker = [[MASConstraintMaker alloc] initWithView:self];
    block(constraintMaker);
    return [constraintMaker install];
}

- (NSArray *)mas_updateConstraints:(void (NS_NOESCAPE^)(MASConstraintMaker *))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    MASConstraintMaker *constraintMaker = [[MASConstraintMaker alloc] initWithView:self];
    constraintMaker.updateExisting = YES;
    block(constraintMaker);
    return [constraintMaker install];
}

- (NSArray *)mas_remakeConstraints:(void (NS_NOESCAPE^)(MASConstraintMaker *make))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    MASConstraintMaker *constraintMaker = [[MASConstraintMaker alloc] initWithView:self];
    constraintMaker.removeExisting = YES;
    block(constraintMaker);
    return [constraintMaker install];
}

#pragma mark - NSLayoutAttribute properties

- (MASViewAttribute *)mas_left {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeft];
}

- (MASViewAttribute *)mas_top {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTop];
}

- (MASViewAttribute *)mas_right {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeRight];
}

- (MASViewAttribute *)mas_bottom {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBottom];
}

- (MASViewAttribute *)mas_leading {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeading];
}

- (MASViewAttribute *)mas_trailing {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTrailing];
}

- (MASViewAttribute *)mas_width {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeWidth];
}

- (MASViewAttribute *)mas_height {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeHeight];
}

- (MASViewAttribute *)mas_centerX {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterX];
}

- (MASViewAttribute *)mas_centerY {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterY];
}

- (MASViewAttribute *)mas_baseline {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLastBaseline];
}

- (MASViewAttribute * (^)(NSLayoutAttribute))mas_attribute {
    return ^(NSLayoutAttribute attr) {
        return [[MASViewAttribute alloc] initWithView:self layoutAttribute:attr];
    };
}

- (MASViewAttribute *)mas_firstBaseline {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeFirstBaseline];
}
- (MASViewAttribute *)mas_lastBaseline {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLastBaseline];
}

#if TARGET_OS_IPHONE || TARGET_OS_TV

- (MASViewAttribute *)mas_leftMargin {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeftMargin];
}

- (MASViewAttribute *)mas_rightMargin {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeRightMargin];
}

- (MASViewAttribute *)mas_topMargin {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTopMargin];
}

- (MASViewAttribute *)mas_bottomMargin {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBottomMargin];
}

- (MASViewAttribute *)mas_leadingMargin {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeadingMargin];
}

- (MASViewAttribute *)mas_trailingMargin {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTrailingMargin];
}

- (MASViewAttribute *)mas_centerXWithinMargins {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterXWithinMargins];
}

- (MASViewAttribute *)mas_centerYWithinMargins {
    return [[MASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterYWithinMargins];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuide {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideLeading {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeLeading];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideTrailing {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeTrailing];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideLeft {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeLeft];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideRight {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeRight];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideTop {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideBottom {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideWidth {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeWidth];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideHeight {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeHeight];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideCenterX {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeCenterX];
}

- (MASViewAttribute *)mas_safeAreaLayoutGuideCenterY {
    return [[MASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeCenterY];
}

- (MASViewAttribute *)mas_keyboardLayoutGuide {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideLeading {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeLeading];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideTrailing {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeTrailing];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideLeft {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeLeft];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideRight {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeRight];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideTop {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideBottom {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideWidth {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeWidth];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideHeight {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeHeight];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideCenterX {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeCenterX];
}

- (MASViewAttribute *)mas_keyboardLayoutGuideCenterY {
    return [[MASViewAttribute alloc] initWithView:self item:self.keyboardLayoutGuide layoutAttribute:NSLayoutAttributeCenterY];
}

#endif

#pragma mark - associated properties

- (id)mas_key {
    return objc_getAssociatedObject(self, @selector(mas_key));
}

- (void)setMas_key:(id)key {
    objc_setAssociatedObject(self, @selector(mas_key), key, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - heirachy

- (__kindof MAS_VIEW *)mas_closestCommonSuperview:(MAS_VIEW *)view {
    MAS_VIEW *closestCommonSuperview = [self tryFindClosestCommonSuperview:view];
    if (closestCommonSuperview) {
        return closestCommonSuperview;
    }

    closestCommonSuperview = self;
    MAS_VIEW *secondViewSuperview = view;
    // O(a+b)
    while (closestCommonSuperview != secondViewSuperview) {
        closestCommonSuperview = !closestCommonSuperview ? view : closestCommonSuperview.superview;
        secondViewSuperview = !secondViewSuperview ? self : secondViewSuperview.superview;
    }

    return closestCommonSuperview;
}

- (MAS_VIEW *)tryFindClosestCommonSuperview:(MAS_VIEW *)secondView {
    if (!secondView) {
        return nil;
    }

    if (self == secondView) {
        return self;
    }

    if (self.superview && secondView.superview == self.superview) {
        return self.superview;
    } 

    if (self.superview == secondView) {
        return self.superview;
    } 

    if (self == secondView.superview) {
        return secondView.superview;
    }

    return nil;
}

@end
