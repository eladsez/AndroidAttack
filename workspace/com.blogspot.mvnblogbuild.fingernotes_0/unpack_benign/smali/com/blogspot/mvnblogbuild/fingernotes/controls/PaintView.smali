.class public Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;
.super Landroid/widget/ImageView;
.source "PaintView.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode:[I = null

.field public static final BCOLORVAL:I = 0xd5

.field private static final BCOLORVAL_TEXT:I = 0x36

.field private static DEF_MAX_SCALE:I = 0x0

.field public static final GCOLORVAL:I = 0xef

.field private static final GCOLORVAL_TEXT:I = 0x36

.field private static final LOG_TAG:Ljava/lang/String;

.field private static MAX_SCALE:F = 0.0f

.field private static MIN_SCALE:F = 0.0f

.field private static final PAINT_LINE_WIDTH:F = 6.0f

.field public static final RCOLORVAL:I = 0xff

.field private static final RCOLORVAL_TEXT:I = 0x36

.field private static final RUBBER_LINE_WIDTH:F = 18.0f

.field private static final TOUCH_TOLERANCE:F = 4.0f

.field private static final VIEW_TOUCH_TOLERANCE:F = 16.0f

.field private static ZOOM_SCALE_1:F

.field private static ZOOM_SCALE_2:F


# instance fields
.field private centerPointX:F

.field private centerPointY:F

.field private deltaCenterPointX:F

.field private deltaCenterPointY:F

.field private deltaX:F

.field private deltaY:F

.field private densityScale:F

.field private distCur:F

.field private distDelta:F

.field private distPre:F

.field private dst:Landroid/graphics/Rect;

.field private fingerPaint:Landroid/graphics/Paint;

.field private mX:F

.field private mY:F

.field private onePointPressed:Z

.field private paintHeight:I

.field private paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

.field private paintWidth:I

.field private scale:F

.field private sourceCanvas:Landroid/graphics/Canvas;

.field private sourcePath:Landroid/graphics/Path;

.field private src:Landroid/graphics/Rect;

.field private textPositionX:F

.field private textPositionY:F

.field private updateBitmap:Z

.field private userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

.field private workPath:Landroid/graphics/Path;

.field protected x1:F

.field protected x2:F

.field protected y1:F

.field protected y2:F

.field private zoomScaleImg:Landroid/widget/ImageView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->values()[Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->RUBBER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->LOG_TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x3

    sput v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    .line 54
    sget v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    int-to-float v0, v0

    sput v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    .line 56
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_1:F

    .line 57
    const/high16 v0, 0x40200000    # 2.5f

    sput v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_2:F

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->src:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->dst:Landroid/graphics/Rect;

    .line 49
    iput-boolean v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->updateBitmap:Z

    .line 50
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    .line 58
    sget v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    .line 59
    iput v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    .line 60
    iput v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    .line 61
    iput v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distPre:F

    .line 63
    iput v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointX:F

    .line 64
    iput v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointY:F

    .line 65
    iput v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointX:F

    .line 66
    iput v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointY:F

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->zoomScaleImg:Landroid/widget/ImageView;

    .line 85
    iput-boolean v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->onePointPressed:Z

    .line 88
    iput v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->textPositionX:F

    .line 89
    iput v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->textPositionY:F

    .line 94
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    .line 96
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->densityScale:F

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    .line 99
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 104
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    return-void
.end method

.method private repaintBitmap(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 15
    .param p1, "argDeltaX"    # Ljava/lang/Float;
    .param p2, "argDeltaY"    # Ljava/lang/Float;
    .param p3, "argDeltaScaleZoomIn"    # Ljava/lang/Float;
    .param p4, "argDeltaScaleZoomOut"    # Ljava/lang/Float;
    .param p5, "callInvalidate"    # Ljava/lang/Boolean;

    .prologue
    .line 228
    iget v7, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintWidth:I

    .line 229
    .local v7, "workWidth":I
    iget v6, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintHeight:I

    .line 230
    .local v6, "workHeight":I
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 231
    .local v5, "sourceWidth":I
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 233
    .local v4, "sourceHeight":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 234
    .local v1, "minDimension":Ljava/lang/Float;
    const/high16 v8, 0x40000000    # 2.0f

    int-to-double v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    int-to-double v11, v6

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 235
    .local v0, "maxDimension":Ljava/lang/Float;
    if-eqz p3, :cond_0

    .line 236
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    .line 237
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    sget v9, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 238
    sget v8, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    .line 242
    :cond_0
    if-eqz p4, :cond_1

    .line 243
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    .line 244
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    sget v9, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 245
    sget v8, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    .line 249
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 250
    :cond_2
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    sget v9, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_1:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    .line 251
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->zoomScaleImg:Landroid/widget/ImageView;

    const v9, 0x7f02000d

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    :cond_3
    :goto_0
    int-to-float v8, v7

    invoke-virtual {p0, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 261
    .local v3, "scaledWidth":I
    int-to-float v8, v6

    invoke-virtual {p0, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 263
    .local v2, "scaledHeight":I
    if-eqz p1, :cond_4

    .line 264
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    .line 266
    :cond_4
    if-eqz p2, :cond_5

    .line 267
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    .line 270
    :cond_5
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointX:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointY:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    .line 271
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointX:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointY:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    .line 272
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    iget v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointX:F

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointX:F

    .line 273
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    iget v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointY:F

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointY:F

    .line 276
    :cond_6
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointX:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointY:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7

    .line 277
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointX:F

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    .line 278
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointY:F

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    .line 281
    :cond_7
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_d

    .line 282
    const/4 v8, 0x0

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    .line 288
    :cond_8
    :goto_1
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    .line 289
    const/4 v8, 0x0

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    .line 295
    :cond_9
    :goto_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 296
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->invalidate()V

    .line 298
    :cond_a
    return-void

    .line 253
    .end local v2    # "scaledHeight":I
    .end local v3    # "scaledWidth":I
    :cond_b
    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    sget v9, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_1:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_c

    iget v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    sget v9, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_2:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    .line 254
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->zoomScaleImg:Landroid/widget/ImageView;

    const v9, 0x7f02000e

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 256
    :cond_c
    iget-object v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->zoomScaleImg:Landroid/widget/ImageView;

    const v9, 0x7f02000f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 284
    .restart local v2    # "scaledHeight":I
    .restart local v3    # "scaledWidth":I
    :cond_d
    int-to-float v8, v5

    iget v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    sub-float/2addr v8, v9

    int-to-float v9, v7

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    .line 285
    int-to-float v8, v5

    int-to-float v9, v7

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    goto :goto_1

    .line 291
    :cond_e
    int-to-float v8, v4

    iget v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    sub-float/2addr v8, v9

    int-to-float v9, v6

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    .line 292
    int-to-float v8, v4

    int-to-float v9, v6

    invoke-virtual {p0, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    goto :goto_2
.end method

.method private saveTextFromInput()V
    .locals 14

    .prologue
    const/16 v9, 0x36

    .line 195
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    .line 196
    .local v4, "paintActivity":Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;
    const v7, 0x7f0a0015

    invoke-virtual {v4, v7}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 197
    .local v5, "textInput":Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 198
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "inputLines":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 201
    .local v2, "lineNumber":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 202
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v6

    .line 207
    .local v6, "textTopDelta":F
    const/4 v2, 0x1

    .line 208
    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    array-length v8, v1

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->invalidate()V

    .line 219
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .end local v1    # "inputLines":[Ljava/lang/String;
    .end local v2    # "lineNumber":I
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v6    # "textTopDelta":F
    :cond_0
    return-void

    .line 209
    .restart local v1    # "inputLines":[Ljava/lang/String;
    .restart local v2    # "lineNumber":I
    .restart local v3    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "textTopDelta":F
    :cond_1
    aget-object v0, v1, v7

    .line 210
    .local v0, "inputLine":Ljava/lang/String;
    iget-object v9, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    .line 211
    iget v10, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->textPositionX:F

    invoke-virtual {p0, v10}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordX(F)F

    move-result v10

    .line 212
    iget v11, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->textPositionY:F

    invoke-virtual {p0, v11}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordY(F)F

    move-result v11

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v12

    int-to-float v13, v2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 210
    invoke-virtual {v9, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 146
    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 147
    .local v0, "dx":F
    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 148
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    iget v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    iget v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 150
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    invoke-virtual {p0, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordX(F)F

    move-result v3

    .line 151
    iget v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    invoke-virtual {p0, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordY(F)F

    move-result v4

    .line 152
    iget v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    invoke-virtual {p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordX(F)F

    move-result v5

    .line 153
    iget v6, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordY(F)F

    move-result v6

    .line 150
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 154
    iput p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    .line 155
    iput p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    .line 157
    :cond_1
    return-void
.end method

.method private touch_up()V
    .locals 4

    .prologue
    const/16 v3, 0x36

    .line 160
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordX(F)F

    move-result v1

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    invoke-virtual {p0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordY(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 177
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 178
    return-void

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v1

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->densityScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xef

    const/16 v3, 0xd5

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v1

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->densityScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private view_touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x41800000    # 16.0f

    .line 181
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 182
    .local v6, "dx":F
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 183
    .local v7, "dy":F
    cmpl-float v0, v6, v1

    if-gez v0, :cond_0

    cmpl-float v0, v7, v1

    if-ltz v0, :cond_1

    .line 184
    :cond_0
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 185
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 188
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v4, v3

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->repaintBitmap(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 189
    iput p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    .line 190
    iput p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method public CleanPaint()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    const/16 v1, 0xff

    const/16 v2, 0xef

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 110
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->invalidate()V

    .line 111
    return-void
.end method

.method public getFingerInputMode()Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x36

    .line 359
    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintWidth:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 360
    .local v1, "scaledWidth":I
    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintHeight:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemObjSize(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 362
    .local v0, "scaledHeight":I
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->src:Landroid/graphics/Rect;

    iget v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 363
    iget v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 364
    iget v6, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 362
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->dst:Landroid/graphics/Rect;

    iget v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintWidth:I

    iget v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintHeight:I

    invoke-virtual {v2, v9, v9, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->src:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->dst:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 368
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 382
    :goto_0
    :pswitch_0
    return-void

    .line 370
    :pswitch_1
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->densityScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 372
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 375
    :pswitch_2
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0xef

    const/16 v5, 0xd5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41900000    # 18.0f

    iget v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->densityScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->fingerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 304
    iput p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintWidth:I

    .line 305
    iput p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintHeight:I

    .line 306
    move v1, p1

    .line 307
    .local v1, "localW":I
    move v0, p2

    .line 308
    .local v0, "localH":I
    if-le p1, p2, :cond_0

    .line 309
    move v1, p2

    .line 310
    move v0, p1

    .line 313
    :cond_0
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v4}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 314
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    sget v5, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    mul-int/2addr v5, v1

    sget v6, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    mul-int/2addr v6, v0

    .line 315
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 314
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setLastBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    .line 318
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->CleanPaint()V

    .line 352
    :goto_0
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v4}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sput v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    .line 353
    sget v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget v5, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    sget v6, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    sput v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_1:F

    .line 354
    sget v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    sget v6, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    sget v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MIN_SCALE:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    sput v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->ZOOM_SCALE_2:F

    .line 355
    return-void

    .line 320
    :cond_1
    sget v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 321
    sget v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 323
    :cond_2
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v4}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 324
    iget-object v6, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v6}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 322
    invoke-static {v4, v5, v6}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppUtils;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 325
    .local v2, "resizedSourceBitmap":Landroid/graphics/Bitmap;
    sget v4, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    mul-int/2addr v4, v1

    sget v5, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->DEF_MAX_SCALE:I

    mul-int/2addr v5, v0

    .line 326
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 325
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 327
    .local v3, "tmp":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    .line 328
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    const/16 v5, 0xff

    const/16 v6, 0xef

    const/16 v7, 0xd5

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 329
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 330
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v4}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearUserMBitmap()V

    .line 331
    iget-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v4, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setLastBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    const/4 v3, 0x0

    .line 334
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    .line 336
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :goto_1
    const/4 v2, 0x0

    .line 342
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 344
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 345
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 348
    .end local v2    # "resizedSourceBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "tmp":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourceCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_0

    .line 339
    .restart local v2    # "resizedSourceBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "tmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 390
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 391
    .local v7, "countPoints":I
    packed-switch v6, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 393
    :pswitch_0
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 397
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->workPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 399
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 400
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->sourcePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordX(F)F

    move-result v1

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    invoke-virtual {p0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->screenToMemCoordY(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 402
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    .line 403
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    goto :goto_0

    .line 406
    :pswitch_2
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->saveTextFromInput()V

    .line 408
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    .line 409
    .local v9, "paintActivity":Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;
    const v0, 0x7f0a0015

    invoke-virtual {v9, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 411
    .local v10, "textInput":Landroid/widget/EditText;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 412
    .local v8, "iv_params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    float-to-int v0, v0

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 413
    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 415
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 416
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 417
    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 419
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->textPositionX:F

    .line 420
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->textPositionY:F

    goto :goto_0

    .line 423
    .end local v8    # "iv_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "paintActivity":Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;
    .end local v10    # "textInput":Landroid/widget/EditText;
    :pswitch_3
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mX:F

    .line 424
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->mY:F

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->onePointPressed:Z

    goto/16 :goto_0

    .line 430
    :pswitch_4
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_0

    .line 433
    :pswitch_6
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    invoke-direct {p0, v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->touch_move(FF)V

    .line 434
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->invalidate()V

    goto/16 :goto_0

    .line 437
    :pswitch_7
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    iget-boolean v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->onePointPressed:Z

    if-eqz v0, :cond_1

    .line 438
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    invoke-direct {p0, v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->view_touch_move(FF)V

    .line 439
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->invalidate()V

    .line 442
    :cond_1
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x2:F

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y2:F

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->onePointPressed:Z

    .line 447
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x2:F

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y2:F

    iget v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distCur:F

    .line 448
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distPre:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distCur:F

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distPre:F

    sub-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distDelta:F

    .line 449
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 451
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 452
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x2:F

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->x1:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointX:F

    .line 453
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y2:F

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->y1:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointY:F

    .line 456
    :cond_2
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    sget v1, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 458
    const/4 v1, 0x0

    .line 459
    const/4 v2, 0x0

    .line 460
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distCur:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 461
    const/4 v4, 0x0

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    .line 458
    invoke-direct/range {v0 .. v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->repaintBitmap(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 465
    :cond_3
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distDelta:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 466
    const/4 v1, 0x0

    .line 467
    const/4 v2, 0x0

    .line 468
    const/4 v3, 0x0

    .line 469
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distCur:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 470
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    .line 466
    invoke-direct/range {v0 .. v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->repaintBitmap(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 474
    :cond_4
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distCur:F

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distPre:F

    goto/16 :goto_0

    .line 448
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    :pswitch_8
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->$SWITCH_TABLE$com$blogspot$mvnblogbuild$fingernotes$utils$PaintInputMode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_9
    goto/16 :goto_0

    .line 484
    :pswitch_a
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->touch_up()V

    .line 485
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->invalidate()V

    goto/16 :goto_0

    .line 488
    :pswitch_b
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->distPre:F

    .line 489
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointX:F

    .line 490
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->centerPointY:F

    .line 492
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointX:F

    .line 493
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaCenterPointY:F

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->onePointPressed:Z

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_4
    .end packed-switch

    .line 393
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 430
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 481
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final screenToMemCoordX(F)F
    .locals 3
    .param p1, "xS"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaX:F

    sget v1, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final screenToMemCoordY(F)F
    .locals 3
    .param p1, "yS"    # F

    .prologue
    .line 142
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->deltaY:F

    sget v1, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final screenToMemObjSize(F)F
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 134
    sget v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->MAX_SCALE:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->scale:F

    div-float/2addr v0, v1

    return v0
.end method

.method public setFingerInputMode(Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;)V
    .locals 4
    .param p1, "fingerInputMode"    # Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    sget-object v3, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    if-ne v2, v3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;

    .line 120
    .local v0, "paintActivity":Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;
    const v2, 0x7f0a0015

    invoke-virtual {v0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 121
    .local v1, "textInput":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->saveTextFromInput()V

    .line 126
    .end local v0    # "paintActivity":Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;
    .end local v1    # "textInput":Landroid/widget/EditText;
    :cond_0
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->paintInputMode:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    .line 127
    return-void
.end method

.method public setZoomScaleImg(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "zoomScaleImg"    # Landroid/widget/ImageView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->zoomScaleImg:Landroid/widget/ImageView;

    .line 131
    return-void
.end method
