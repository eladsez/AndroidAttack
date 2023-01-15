.class public Ljp/beyond/sdk/layout/BeadOptionalLayout;
.super Ljp/beyond/sdk/layout/BeadLayout;
.source "BeadOptionalLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_OPTIONAL:F = 0.6f

.field private static final ADIMAGE_SCALE_HEIGHT_OPTIONAL_LANDSCAPE:F = 0.65f

.field private static final BUTTON_HEIGHT:I = 0x2d

.field private static final BUTTON_HEIGHT_LANDSCAPE:I = 0x1e

.field private static final CLOSE_BUTTON_DIV:I = 0x8

.field private static final CLOSE_BUTTON_MIN_SIZE:I = 0x28

.field protected static final LAYOUT_BACKGROUND_COLOR:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadLayout;-><init>()V

    .line 43
    return-void
.end method

.method private addCloseButtonView(Landroid/widget/FrameLayout;Landroid/content/Context;I)V
    .locals 5
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "adImageWidth"    # I

    .prologue
    const/4 v4, -0x2

    .line 126
    invoke-direct {p0, p2}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->createCloseButton(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    .line 129
    .local v1, "closeButton":Landroid/widget/Button;
    div-int/lit8 v2, p3, 0x8

    .line 130
    .local v2, "closeButtonSize":I
    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 132
    const/16 v2, 0x28

    .line 135
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v0, "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 139
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 140
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void
.end method

.method private createCloseButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Ljp/beyond/sdk/layout/BeadCloseButton;

    invoke-direct {v0, p1}, Ljp/beyond/sdk/layout/BeadCloseButton;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "closeButton":Landroid/widget/Button;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 154
    return-object v0
.end method

.method private getButtonHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 176
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Ljp/beyond/sdk/utilities/MathUtil;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method


# virtual methods
.method protected addDownloadButtonView(Landroid/widget/LinearLayout;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p1, "mainLayout"    # Landroid/widget/LinearLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isApp"    # Z
    .param p4, "txtbtnText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 98
    const-string v3, " "

    .line 99
    .local v3, "temp":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 101
    move-object v3, p4

    .line 103
    :cond_0
    invoke-virtual {p0, p2, v5, p3, p4}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->createDownloadButton(Landroid/content/Context;ZZLjava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 104
    .local v0, "downloadButton":Landroid/widget/Button;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->setButtonTextStrong(Landroid/widget/Button;)V

    .line 108
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    const/4 v4, -0x1

    .line 110
    invoke-direct {p0, p2}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->getButtonHeight(Landroid/content/Context;)I

    move-result v5

    .line 108
    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v1, "downloadLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p2}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->getMargin(Landroid/content/Context;)I

    move-result v2

    .line 112
    .local v2, "margin":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

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
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 52
    .local v2, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->getAdContentsSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 55
    .local v1, "imageRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2, p1, v1}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->addLogoView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 58
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0, p1, p3, v1}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->addAdWebView(Landroid/widget/FrameLayout;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 64
    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0, p1, v5}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->addCloseButtonView(Landroid/widget/FrameLayout;Landroid/content/Context;I)V

    .line 67
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    const/4 v5, -0x2

    .line 69
    const/4 v6, -0x2

    .line 67
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->getMargin(Landroid/content/Context;)I

    move-result v3

    .line 71
    .local v3, "margin":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p0, v2, p1, p6, p7}, Ljp/beyond/sdk/layout/BeadOptionalLayout;->addDownloadButtonView(Landroid/widget/LinearLayout;Landroid/content/Context;ZLjava/lang/String;)V

    .line 78
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
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImageScaleHeight(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 161
    const v0, 0x3f266666    # 0.65f

    .line 164
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method
