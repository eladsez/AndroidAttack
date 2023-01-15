.class public Ljp/beyond/sdk/layout/BeadIcon2Layout;
.super Ljp/beyond/sdk/layout/BeadLayout;
.source "BeadIcon2Layout.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_EXIT:F = 0.9f

.field private static final ADIMAGE_SCALE_HEIGHT_EXIT_LANDSCAPE:F = 1.5f

.field private static final BUTTON_HEIGHT:I = 0x2d

.field private static final BUTTON_HEIGHT_LANDSCAPE:I = 0x2d

.field protected static final BUTTON_TEXT_COLOR:I = -0x1000000

.field private static final CLOSE_BUTTON_DIV:I = 0xa

.field private static final CLOSE_BUTTON_MIN_SIZE:I = 0x32

.field protected static final DOWNLOAD_BUTTON_TEXT_COLOR:I = -0x1

.field protected static final LAYOUT_BACKGROUND_COLOR:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljp/beyond/sdk/layout/BeadLayout;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method createAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "icon_Text"    # Ljava/lang/String;
    .param p5, "icon_title"    # Ljava/lang/String;
    .param p6, "isApp"    # Z
    .param p7, "btnText"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadIcon2Layout;->createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 58
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0xc8

    const/16 v2, 0x190

    invoke-virtual {p0, p1, v0, v2}, Ljp/beyond/sdk/layout/BeadIcon2Layout;->getAdContentsSizeFixSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v7

    .line 61
    .local v7, "imageRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    const/4 v0, -0x2

    .line 72
    const/4 v2, -0x2

    .line 70
    invoke-direct {v10, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v10, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadIcon2Layout;->getMargin(Landroid/content/Context;)I

    move-result v9

    .line 74
    .local v9, "margin":I
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v9, v0, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    invoke-virtual {v1, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    .line 77
    invoke-virtual/range {v0 .. v7}, Ljp/beyond/sdk/layout/BeadIcon2Layout;->addIcon2View(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 82
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 83
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
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDownloadButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadIcon2Layout;->getButtonLayout()Ljp/beyond/sdk/layout/BeadButtonLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/layout/BeadButtonLayout;->createGreenButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageScaleHeight(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 128
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 131
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    goto :goto_0
.end method
