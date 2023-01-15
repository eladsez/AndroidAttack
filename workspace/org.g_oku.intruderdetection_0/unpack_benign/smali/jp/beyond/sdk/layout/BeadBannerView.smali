.class public Ljp/beyond/sdk/layout/BeadBannerView;
.super Landroid/view/View;
.source "BeadBannerView.java"


# static fields
.field private static final ADIMAGE_SCALE_HEIGHT_EXIT:F = 0.8f

.field private static final ADIMAGE_SCALE_HEIGHT_EXIT_LANDSCAPE:F = 0.8f

.field private static final BUTTON_HEIGHT:I = 0x2d

.field private static final BUTTON_HEIGHT_LANDSCAPE:I = 0x2d

.field protected static final BUTTON_TEXT_COLOR:I = -0x1000000

.field protected static final DOWNLOAD_BUTTON_TEXT_COLOR:I = -0x1

.field static final INTERVAL_DEFAULT:I = 0x1

.field protected static final LAYOUT_BACKGROUND_COLOR:I = -0x1000000


# instance fields
.field private BeadBanner_is_overlay:Ljava/lang/String;

.field private BeadBanner_position:Ljava/lang/String;

.field private BeadBanner_refresh_rate:Ljava/lang/String;

.field private BeadBanner_sid:Ljava/lang/String;

.field private BeadBanner_transitionAnimation:Ljava/lang/String;

.field private mBeadBanner:Ljp/beyond/sdk/Bead;

.field private mConnection:Ljp/beyond/sdk/BeadConnection;

.field private mDoneFirstSetting:Z

.field private mInterval:I

.field private mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

.field private mRequestShowCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/beyond/sdk/layout/BeadBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v4, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mDoneFirstSetting:Z

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mConnection:Ljp/beyond/sdk/BeadConnection;

    .line 79
    sget-object v1, Ljp/beyond/sdk/Bead$ContentsOrientation;->Auto:Ljp/beyond/sdk/Bead$ContentsOrientation;

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mOrientation:Ljp/beyond/sdk/Bead$ContentsOrientation;

    .line 82
    iput v4, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 87
    iput v5, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mInterval:I

    .line 94
    sget-object v1, Ljp/beyond/R$styleable;->BeadOptions:[I

    .line 93
    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_refresh_rate:Ljava/lang/String;

    .line 98
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_is_overlay:Ljava/lang/String;

    .line 99
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_position:Ljava/lang/String;

    .line 100
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_transitionAnimation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadBannerView;->Connecting()V

    .line 108
    invoke-virtual {p0, p1}, Ljp/beyond/sdk/layout/BeadBannerView;->Showing(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 125
    iget v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    iget v3, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    invoke-static {v1, v2, v3}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    iget v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mInterval:I

    if-gtz v1, :cond_0

    .line 131
    iput v5, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mInterval:I

    .line 153
    :cond_0
    iput v4, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    iget v3, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    invoke-static {v1, v2, v3}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    return-void

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    throw v1
.end method

.method private doFirstSettingForRequestAd(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    iget-boolean v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mDoneFirstSetting:Z

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mDoneFirstSetting:Z

    goto :goto_0
.end method

.method private putUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, "view":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "userAgent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 342
    invoke-static {v0}, Ljp/beyond/sdk/utilities/ConnectionUtil;->setUserAgent(Ljava/lang/String;)V

    .line 343
    return-object v0
.end method


# virtual methods
.method Connecting()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method Showing(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljp/beyond/sdk/BeadPreference;->loadShowCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 218
    iget v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    iget v2, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    invoke-static {v0, v1, v2}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 223
    iget v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mInterval:I

    if-gtz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mInterval:I

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/beyond/sdk/layout/BeadBannerView;->BeadBanner_sid:Ljava/lang/String;

    iget v2, p0, Ljp/beyond/sdk/layout/BeadBannerView;->mRequestShowCounter:I

    invoke-static {v0, v1, v2}, Ljp/beyond/sdk/BeadPreference;->saveShowCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method protected createBaseLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 264
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 274
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    const/16 v2, 0x28

    .line 198
    .local v2, "dCenter":I
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadBannerView;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 199
    .local v0, "centerX":I
    invoke-virtual {p0}, Ljp/beyond/sdk/layout/BeadBannerView;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 201
    .local v1, "centerY":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 202
    .local v3, "paint":Landroid/graphics/Paint;
    const v5, -0xffff01

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    return-void
.end method
