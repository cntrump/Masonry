//
//  UIScrollView+MASAdditions.m
//  Masonry
//
//  Created by v on 2025/7/21.
//  Copyright © 2025 Jonas Budelmann. All rights reserved.
//

#import "UIScrollView+MASAdditions.h"
#import "View+MASAdditions.h"

#if TARGET_OS_IPHONE || TARGET_OS_TV

API_AVAILABLE(ios(11.0))
@implementation UIScrollView (MASFrameLayoutGuideAdditions)

- (MASViewAttribute *) mas_frameLayoutGuide {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (MASViewAttribute *) mas_frameLayoutGuideLeading {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeLeading];
}

- (MASViewAttribute *) mas_frameLayoutGuideTrailing {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeTrailing];
}

- (MASViewAttribute *) mas_frameLayoutGuideLeft {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeLeft];
}

- (MASViewAttribute *) mas_frameLayoutGuideRight {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeRight];
}

- (MASViewAttribute *) mas_frameLayoutGuideTop {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}

- (MASViewAttribute *) mas_frameLayoutGuideBottom {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (MASViewAttribute *) mas_frameLayoutGuideWidth {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeWidth];
}

- (MASViewAttribute *) mas_frameLayoutGuideHeight {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeHeight];
}

- (MASViewAttribute *) mas_frameLayoutGuideCenterX {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeCenterX];
}

- (MASViewAttribute *) mas_frameLayoutGuideCenterY {
    return [[MASViewAttribute alloc] initWithView:self item:self.frameLayoutGuide layoutAttribute:NSLayoutAttributeCenterY];
}

@end

API_AVAILABLE(ios(11.0))
@implementation UIScrollView (MASContentLayoutGuideAdditions)

- (MASViewAttribute *) mas_contentLayoutGuide {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeNotAnAttribute];
}

- (MASViewAttribute *) mas_contentLayoutGuideLeading {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeLeading];
}

- (MASViewAttribute *) mas_contentLayoutGuideTrailing {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeTrailing];
}

- (MASViewAttribute *) mas_contentLayoutGuideLeft {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeLeft];
}

- (MASViewAttribute *) mas_contentLayoutGuideRight {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeRight];
}

- (MASViewAttribute *) mas_contentLayoutGuideTop {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}

- (MASViewAttribute *) mas_contentLayoutGuideBottom {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (MASViewAttribute *) mas_contentLayoutGuideWidth {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeWidth];
}

- (MASViewAttribute *) mas_contentLayoutGuideHeight {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeHeight];
}

- (MASViewAttribute *) mas_contentLayoutGuideCenterX {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeCenterX];
}

- (MASViewAttribute *) mas_contentLayoutGuideCenterY {
    return [[MASViewAttribute alloc] initWithView:self item:self.contentLayoutGuide layoutAttribute:NSLayoutAttributeCenterY];
}

@end

#endif
