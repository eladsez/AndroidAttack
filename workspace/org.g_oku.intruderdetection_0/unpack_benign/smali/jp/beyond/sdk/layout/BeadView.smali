.class public Ljp/beyond/sdk/layout/BeadView;
.super Landroid/widget/RelativeLayout;
.source "BeadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_APP:Ljava/lang/String; = "APP"

.field protected static final BANNERLOGO_IMAGE_HEIGHT:I = 0xf

.field private static v1:Landroid/view/View;

.field private static v2:Landroid/view/View;


# instance fields
.field private BannerShown:Z

.field private Clicked:Z

.field private CurrentActivity:Landroid/app/Activity;

.field private adBitmap_a:Landroid/graphics/Bitmap;

.field private adBitmap_b:Landroid/graphics/Bitmap;

.field private adData_a:Ljp/beyond/sdk/BeadData;

.field private adData_b:Ljp/beyond/sdk/BeadData;

.field private logoHeight_target:F

.field private logoWidth_target:F

.field private mEventListener:Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

.field private final mHtmlFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Ljp/beyond/sdk/layout/BeadView;->v1:Landroid/view/View;

    .line 73
    sput-object v0, Ljp/beyond/sdk/layout/BeadView;->v2:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->mEventListener:Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    .line 68
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->mHtmlFileName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    .line 74
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->adBitmap_a:Landroid/graphics/Bitmap;

    .line 75
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->adBitmap_b:Landroid/graphics/Bitmap;

    .line 76
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->adData_a:Ljp/beyond/sdk/BeadData;

    .line 77
    iput-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->adData_b:Ljp/beyond/sdk/BeadData;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/beyond/sdk/layout/BeadView;->BannerShown:Z

    .line 82
    iput v1, p0, Ljp/beyond/sdk/layout/BeadView;->logoWidth_target:F

    .line 83
    iput v1, p0, Ljp/beyond/sdk/layout/BeadView;->logoHeight_target:F

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/beyond/sdk/layout/BeadView;->Clicked:Z

    .line 93
    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadView;->mEventListener:Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    .line 97
    return-void
.end method

.method static synthetic access$0(Ljp/beyond/sdk/layout/BeadView;I)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadView;->animatePopLogo(I)V

    return-void
.end method

.method static synthetic access$1(Ljp/beyond/sdk/layout/BeadView;)Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->mEventListener:Ljp/beyond/sdk/layout/BeadView$BeadViewEventListener;

    return-object v0
.end method

.method static synthetic access$2(Ljp/beyond/sdk/layout/BeadView;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Ljp/beyond/sdk/layout/BeadView;->Clicked:Z

    return v0
.end method

.method static synthetic access$3(Ljp/beyond/sdk/layout/BeadView;I)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadView;->animateHideLogo(I)V

    return-void
.end method

.method static synthetic access$4(Ljp/beyond/sdk/layout/BeadView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Ljp/beyond/sdk/layout/BeadView;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Ljp/beyond/sdk/layout/BeadView;->Clicked:Z

    return-void
.end method

.method private animateButton()V
    .locals 6

    .prologue
    .line 298
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 300
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 305
    .local v1, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 306
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 307
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateHideFastLogo(I)V
    .locals 4
    .param p1, "bannerID"    # I

    .prologue
    .line 399
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljp/beyond/sdk/layout/BeadView$7;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/layout/BeadView$7;-><init>(Ljp/beyond/sdk/layout/BeadView;I)V

    .line 417
    const-wide/16 v2, 0xa

    .line 399
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    return-void
.end method

.method private animateHideLogo(I)V
    .locals 4
    .param p1, "bannerID"    # I

    .prologue
    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljp/beyond/sdk/layout/BeadView$6;

    invoke-direct {v1, p0, p1}, Ljp/beyond/sdk/layout/BeadView$6;-><init>(Ljp/beyond/sdk/layout/BeadView;I)V

    .line 390
    const-wide/16 v2, 0x5dc

    .line 353
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method private animatePopLogo(I)V
    .locals 11
    .param p1, "bannerID"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 314
    add-int/lit8 v2, p1, 0x9

    .line 315
    .local v2, "temp":I
    iget-object v3, p0, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 316
    .local v1, "logo":Landroid/widget/ImageView;
    iput-boolean v10, p0, Ljp/beyond/sdk/layout/BeadView;->Clicked:Z

    .line 317
    if-nez v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-direct {v0, v3, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 322
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 324
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 325
    new-instance v3, Ljp/beyond/sdk/layout/BeadView$5;

    invoke-direct {v3, p0, p1}, Ljp/beyond/sdk/layout/BeadView$5;-><init>(Ljp/beyond/sdk/layout/BeadView;I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setLabelTextClickListener()V
    .locals 2

    .prologue
    .line 273
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljp/beyond/sdk/layout/BeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    .local v0, "logo":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v1, Ljp/beyond/sdk/layout/BeadView$4;

    invoke-direct {v1, p0}, Ljp/beyond/sdk/layout/BeadView$4;-><init>(Ljp/beyond/sdk/layout/BeadView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setLogoClickListener(I)V
    .locals 4
    .param p1, "BannerID"    # I

    .prologue
    .line 241
    add-int/lit8 v1, p1, 0x9

    .line 242
    .local v1, "temp":I
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 243
    .local v0, "logo":Landroid/widget/ImageView;
    const-string v2, "BEAD"

    const-string v3, "logo Clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Ljp/beyond/sdk/layout/BeadView;->animateHideFastLogo(I)V

    .line 249
    new-instance v2, Ljp/beyond/sdk/layout/BeadView$3;

    invoke-direct {v2, p0, p1}, Ljp/beyond/sdk/layout/BeadView$3;-><init>(Ljp/beyond/sdk/layout/BeadView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setWebViewClickListener(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "BannerID"    # I

    .prologue
    .line 212
    add-int/lit8 v0, p2, 0x6

    .line 213
    .local v0, "temp":I
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 215
    .local v1, "webView":Landroid/webkit/WebView;
    if-nez v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v2, Ljp/beyond/sdk/layout/BeadView$2;

    invoke-direct {v2, p0, p1}, Ljp/beyond/sdk/layout/BeadView$2;-><init>(Ljp/beyond/sdk/layout/BeadView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBannerLayout(Landroid/app/Activity;Ljp/beyond/sdk/BeadData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/beyond/sdk/layout/BeadLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 23
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adData"    # Ljp/beyond/sdk/BeadData;
    .param p3, "adBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageName"    # Ljava/lang/String;
    .param p5, "layout"    # Ljp/beyond/sdk/layout/BeadLayout;
    .param p6, "position"    # Ljava/lang/String;
    .param p7, "isOverlay"    # Ljava/lang/String;
    .param p8, "BannerID"    # I

    .prologue
    .line 109
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/beyond/sdk/layout/BeadView;->CurrentActivity:Landroid/app/Activity;

    .line 110
    if-nez p2, :cond_0

    .line 111
    const-string v2, "Bead"

    const-string v3, "BANNER NO DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    .line 206
    :goto_0
    return-object v2

    .line 115
    :cond_0
    const/4 v8, 0x1

    .line 116
    .local v8, "isApp":Z
    const-string v9, ""

    .line 119
    .local v9, "label":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 120
    .local v19, "r":Landroid/content/res/Resources;
    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    .line 121
    .local v21, "targetHeight":F
    const/high16 v2, 0x431e0000    # 158.0f

    div-float v20, v21, v2

    .line 123
    .local v20, "scale":F
    const/4 v2, 0x1

    const/high16 v3, 0x431e0000    # 158.0f

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    .line 124
    .local v11, "height_px":F
    mul-float v2, v11, v20

    move-object/from16 v0, p0

    iput v2, v0, Ljp/beyond/sdk/layout/BeadView;->logoHeight_target:F

    .line 126
    const/4 v2, 0x1

    const/high16 v3, 0x44340000    # 720.0f

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    .line 127
    .local v22, "width_px":F
    mul-float v2, v22, v20

    move-object/from16 v0, p0

    iput v2, v0, Ljp/beyond/sdk/layout/BeadView;->logoWidth_target:F

    .line 129
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getIcon_Text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getIcon_title()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Ljp/beyond/sdk/layout/BeadLayout;->createBannerAdView(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Ljp/beyond/sdk/layout/BeadView;->v1:Landroid/view/View;

    .line 131
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v16, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v17, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEADER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    const/16 v2, 0xa

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FOOTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const/16 v2, 0xc

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    :cond_2
    :goto_1
    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v13, "mainactivityRL":Landroid/widget/RelativeLayout;
    move/from16 v0, p8

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 152
    const-string v2, "Bead"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BANNER SET ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 156
    .local v15, "myView":Landroid/view/View;
    if-eqz v15, :cond_3

    .line 157
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 158
    .local v18, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    const-string v2, "Bead"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BANNER REMOVED "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v18    # "parent":Landroid/view/ViewGroup;
    :cond_3
    sget-object v2, Ljp/beyond/sdk/layout/BeadView;->v1:Landroid/view/View;

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 163
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    sget-object v2, Ljp/beyond/sdk/layout/BeadView;->v1:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    .local v12, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 174
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .local v14, "mainactivityRLParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 177
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEADER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    const/16 v2, 0x30

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FOOTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    const/16 v2, 0x50

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 187
    :cond_5
    :goto_2
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    sget-object v2, Ljp/beyond/sdk/layout/BeadView;->v1:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    if-eqz p2, :cond_6

    .line 193
    invoke-virtual/range {p2 .. p2}, Ljp/beyond/sdk/BeadData;->getHref()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v2, v1}, Ljp/beyond/sdk/layout/BeadView;->setWebViewClickListener(Ljava/lang/String;I)V

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Ljp/beyond/sdk/layout/BeadView;->setLogoClickListener(I)V

    .line 198
    :cond_6
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ljp/beyond/sdk/layout/BeadView$1;

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v3, v0, v1}, Ljp/beyond/sdk/layout/BeadView$1;-><init>(Ljp/beyond/sdk/layout/BeadView;I)V

    .line 204
    const-wide/16 v4, 0x1f4

    .line 198
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    sget-object v2, Ljp/beyond/sdk/layout/BeadView;->v1:Landroid/view/View;

    goto/16 :goto_0

    .line 142
    .end local v12    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "mainactivityRL":Landroid/widget/RelativeLayout;
    .end local v14    # "mainactivityRLParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v15    # "myView":Landroid/view/View;
    :cond_7
    const-string v2, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 143
    const/16 v2, 0xa

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    :cond_8
    const-string v2, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    const/16 v2, 0xc

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 182
    .restart local v12    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v13    # "mainactivityRL":Landroid/widget/RelativeLayout;
    .restart local v14    # "mainactivityRLParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "myView":Landroid/view/View;
    :cond_9
    const-string v2, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 183
    const/16 v2, 0x30

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    :cond_a
    const-string v2, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    const/16 v2, 0x50

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2
.end method
