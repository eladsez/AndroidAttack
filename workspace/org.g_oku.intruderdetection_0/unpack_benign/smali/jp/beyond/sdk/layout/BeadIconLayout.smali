.class public Ljp/beyond/sdk/layout/BeadIconLayout;
.super Ljp/beyond/sdk/layout/BeadLayout;
.source "BeadIconLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_EXIT:F = 0.8f

.field private static final ADIMAGE_SCALE_HEIGHT_EXIT_LANDSCAPE:F = 0.8f

.field private static final BUTTON_HEIGHT:I = 0x2d

.field private static final BUTTON_HEIGHT_LANDSCAPE:I = 0x2d

.field protected static final BUTTON_TEXT_COLOR:I = -0x1000000

.field protected static final DOWNLOAD_BUTTON_TEXT_COLOR:I = -0x1

.field protected static final LAYOUT_BACKGROUND_COLOR:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadLayout;-><init>()V

    .line 41
    return-void
.end method

.method private createLowerSectionButtonLayout(Landroid/content/Context;ZLjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isApp"    # Z
    .param p3, "btnText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadIconLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 104
    .local v2, "margin":I
    const/4 v6, 0x2

    invoke-static {p1, v6}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    .line 107
    .local v3, "marginTop":I
    invoke-virtual {p0, p1, v9}, Ljp/beyond/sdk/layout/BeadIconLayout;->createCancelButton(Landroid/content/Context;Z)Landroid/widget/Button;

    move-result-object v0

    .line 108
    .local v0, "button":Landroid/widget/Button;
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 109
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadIconLayout;->getButtonHeight(Landroid/content/Context;)I

    move-result v6

    .line 109
    invoke-direct {v5, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 113
    .local v5, "param1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {p0, p1, v9, p2, p3}, Ljp/beyond/sdk/layout/BeadIconLayout;->createDownloadButton(Landroid/content/Context;ZZLjava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 119
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 120
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadIconLayout;->getButtonHeight(Landroid/content/Context;)I

    move-result v6

    .line 120
    invoke-direct {v4, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 124
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-object v1
.end method

.method private getButtonHeight(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x2d

    .line 158
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 160
    invoke-static {p1, v2}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v2}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadIconLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 52
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0x12c

    const/16 v2, 0xfa

    invoke-virtual {p0, p1, v0, v2}, Ljp/beyond/sdk/layout/BeadIconLayout;->getAdContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "imageRect":Landroid/graphics/Rect;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 55
    invoke-virtual/range {v0 .. v7}, Ljp/beyond/sdk/layout/BeadIconLayout;->addIconView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 60
    invoke-direct {p0, p1, p6, p7}, Ljp/beyond/sdk/layout/BeadIconLayout;->createLowerSectionButtonLayout(Landroid/content/Context;ZLjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 62
    return-object v1
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
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadIconLayout;->getButtonLayout()Ljp/beyond/sdk/layout/BeadButtonLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/layout/BeadButtonLayout;->createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageScaleHeight(Landroid/content/Context;)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    .line 143
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 148
    :cond_0
    return v2
.end method
