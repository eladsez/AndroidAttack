.class public Ljp/beyond/sdk/layout/BeadBannerLayout;
.super Ljp/beyond/sdk/layout/BeadLayout;
.source "BeadBannerLayout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_EXIT:F = 1.0f

.field private static final ADIMAGE_SCALE_HEIGHT_EXIT_LANDSCAPE:F = 1.0f

.field private static final BUTTON_HEIGHT:I = 0x2d

.field private static final BUTTON_HEIGHT_LANDSCAPE:I = 0x2d

.field protected static final BUTTON_TEXT_COLOR:I = -0x1000000

.field protected static final DOWNLOAD_BUTTON_TEXT_COLOR:I = -0x1

.field protected static final LAYOUT_BACKGROUND_COLOR:I = -0x1000000


# instance fields
.field private BeadBanner_is_overlay:Ljava/lang/String;

.field private BeadBanner_position:Ljava/lang/String;

.field private BeadBanner_refresh_rate:Ljava/lang/String;

.field private BeadBanner_sid:Ljava/lang/String;

.field private BeadBanner_transitionAnimation:Ljava/lang/String;

.field private mBeadBanner:Ljp/beyond/sdk/Bead;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadLayout;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->mBeadBanner:Ljp/beyond/sdk/Bead;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/beyond/sdk/layout/BeadBannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Ljp/beyond/sdk/layout/BeadLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->mBeadBanner:Ljp/beyond/sdk/Bead;

    .line 77
    sget-object v1, Ljp/beyond/R$styleable;->BeadOptions:[I

    .line 76
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->BeadBanner_sid:Ljava/lang/String;

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->BeadBanner_refresh_rate:Ljava/lang/String;

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->BeadBanner_is_overlay:Ljava/lang/String;

    .line 82
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->BeadBanner_position:Ljava/lang/String;

    .line 83
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerLayout;->BeadBanner_transitionAnimation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    throw v1
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method createBannerAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;
    .param p8, "BannerID"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadBannerLayout;->createBannerBaseLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 113
    .local v1, "mainLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 114
    .local v11, "r":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 115
    .local v10, "Width_px":F
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 117
    .local v9, "Height_px":F
    new-instance v7, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v7, v0, v2, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v7, "imageRect":Landroid/graphics/RectF;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    .line 120
    invoke-virtual/range {v0 .. v8}, Ljp/beyond/sdk/layout/BeadBannerLayout;->addBannerView(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;I)V

    .line 122
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 124
    return-object v1
.end method

.method protected getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadBannerLayout;->getButtonLayout()Ljp/beyond/sdk/layout/BeadButtonLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/layout/BeadButtonLayout;->createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageScaleHeight(Landroid/content/Context;)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 144
    :cond_0
    return v2
.end method
