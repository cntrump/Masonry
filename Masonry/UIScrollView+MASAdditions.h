//
//  UIScrollView+MASAdditions.h
//  Masonry
//
//  Created by v on 2025/7/21.
//  Copyright © 2025 Jonas Budelmann. All rights reserved.
//

#import "View+MASAdditions.h"

#if TARGET_OS_IPHONE || TARGET_OS_TV

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(ios(11.0))
@interface UIScrollView (MASFrameLayoutGuideAdditions)

@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuide;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideLeading;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideTrailing;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideLeft;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideRight;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideTop;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideBottom;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideWidth;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideHeight;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideCenterX;
@property (nonatomic, readonly) MASViewAttribute *mas_frameLayoutGuideCenterY;

@end

API_AVAILABLE(ios(11.0))
@interface UIScrollView (MASContentLayoutGuideAdditions)

@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuide;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideLeading;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideTrailing;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideLeft;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideRight;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideTop;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideBottom;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideWidth;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideHeight;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideCenterX;
@property (nonatomic, readonly) MASViewAttribute *mas_contentLayoutGuideCenterY;

@end

NS_ASSUME_NONNULL_END

#endif
