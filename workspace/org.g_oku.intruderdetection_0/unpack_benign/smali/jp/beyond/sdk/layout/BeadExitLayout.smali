.class public Ljp/beyond/sdk/layout/BeadExitLayout;
.super Ljp/beyond/sdk/layout/BeadLayout;
.source "BeadExitLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_EXIT:F = 0.6f

.field private static final ADIMAGE_SCALE_HEIGHT_EXIT_LANDSCAPE:F = 0.55f

.field private static final BUTTON_HEIGHT:I = 0x2d

.field private static final BUTTON_HEIGHT_LANDSCAPE:I = 0x1e

.field protected static final BUTTON_TEXT_COLOR:I = -0x1000000

.field protected static final LAYOUT_BACKGROUND_COLOR:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadLayout;-><init>()V

    .line 39
    return-void
.end method

.method private createLowerSectionButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    .line 116
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 121
    .local v2, "margin":I
    const/4 v6, 0x2

    invoke-static {p1, v6}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    .line 124
    .local v3, "marginTop":I
    invoke-virtual {p0, p1, v11}, Ljp/beyond/sdk/layout/BeadExitLayout;->createQuitButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v0

    .line 125
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->getButtonHeight(Landroid/content/Context;)I

    move-result v6

    .line 126
    invoke-direct {v5, v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 130
    .local v5, "param1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v2, v3, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {p0, p1, v11}, Ljp/beyond/sdk/layout/BeadExitLayout;->createCancelButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 136
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->getButtonHeight(Landroid/content/Context;)I

    move-result v6

    .line 136
    invoke-direct {v4, v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 140
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 141
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-object v1
.end method

.method private createUpperSectionButtonLayout(Landroid/content/Context;ZLjava/lang/String;)Landroid/widget/Button;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isApp"    # Z
    .param p3, "btnText"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3, p2, p3}, Ljp/beyond/sdk/layout/BeadExitLayout;->createDownloadButton(Landroid/content/Context;ZZLjava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 100
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->getButtonHeight(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->getMargin(Landroid/content/Context;)I

    move-result v1

    .line 102
    .local v1, "margin":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-object v0
.end method

.method private getButtonHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 175
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2d

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 52
    .local v2, "mainLayout":Landroid/widget/LinearLayout;
    const/16 v5, 0x12c

    const/16 v6, 0xfa

    invoke-virtual {p0, p1, v5, v6}, Ljp/beyond/sdk/layout/BeadExitLayout;->getAdContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 55
    .local v1, "imageRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v2, p1, v1}, Ljp/beyond/sdk/layout/BeadExitLayout;->addLogoView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {p0, v0, p1, p3, v1}, Ljp/beyond/sdk/layout/BeadExitLayout;->addAdWebView(Landroid/widget/FrameLayout;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 68
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    const/4 v5, -0x2

    .line 70
    const/4 v6, -0x2

    .line 68
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->getMargin(Landroid/content/Context;)I

    move-result v3

    .line 72
    .local v3, "margin":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0, p1, p6, p7}, Ljp/beyond/sdk/layout/BeadExitLayout;->createUpperSectionButtonLayout(Landroid/content/Context;ZLjava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadExitLayout;->createLowerSectionButtonLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 79
    return-object v2
.end method

.method createBannerAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;
    .param p8, "bannerID"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadExitLayout;->getButtonLayout()Ljp/beyond/sdk/layout/BeadButtonLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/layout/BeadButtonLayout;->createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageScaleHeight(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 160
    const v0, 0x3f0ccccd    # 0.55f

    .line 163
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method
