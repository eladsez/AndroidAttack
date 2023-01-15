.class public Lorg/hermit/android/instruments/Gauge;
.super Ljava/lang/Object;
.source "Gauge.java"


# static fields
.field private static final MIN_TEXT:F = 22.0f

.field private static final TAG:Ljava/lang/String; = "instrument"

.field private static baseTextFace:Landroid/graphics/Typeface;

.field private static baseTextSize:F

.field private static headTextSize:F

.field private static innerGap:I

.field private static interPadding:I

.field private static miniTextSize:F

.field private static textScaleX:F

.field private static tinyTextSize:F

.field private static viewSidebar:I


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundCanvas:Landroid/graphics/Canvas;

.field private colBg:I

.field private drawPaint:Landroid/graphics/Paint;

.field private elemBounds:Landroid/graphics/Rect;

.field private gaugeOptions:I

.field private gridColour:I

.field private final parentSurface:Lorg/hermit/android/core/SurfaceRunner;

.field private plotColour:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 752
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sput-object v0, Lorg/hermit/android/instruments/Gauge;->baseTextFace:Landroid/graphics/Typeface;

    .line 755
    const/high16 v0, 0x41b00000    # 22.0f

    sput v0, Lorg/hermit/android/instruments/Gauge;->baseTextSize:F

    .line 758
    const v0, 0x41e4cccc    # 28.599998f

    sput v0, Lorg/hermit/android/instruments/Gauge;->headTextSize:F

    .line 759
    const v0, 0x419e6666    # 19.8f

    sput v0, Lorg/hermit/android/instruments/Gauge;->miniTextSize:F

    .line 760
    const v0, 0x418ccccd    # 17.6f

    sput v0, Lorg/hermit/android/instruments/Gauge;->tinyTextSize:F

    .line 764
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/hermit/android/instruments/Gauge;->textScaleX:F

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 1
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;I)V
    .locals 3
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;
    .param p2, "options"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput v1, p0, Lorg/hermit/android/instruments/Gauge;->gaugeOptions:I

    .line 788
    iput-object v2, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    .line 794
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/hermit/android/instruments/Gauge;->colBg:I

    .line 797
    const v0, -0xff0100

    iput v0, p0, Lorg/hermit/android/instruments/Gauge;->gridColour:I

    .line 798
    const/high16 v0, -0x10000

    iput v0, p0, Lorg/hermit/android/instruments/Gauge;->plotColour:I

    .line 802
    iput-object v2, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 803
    iput-object v2, p0, Lorg/hermit/android/instruments/Gauge;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 123
    iput-object p1, p0, Lorg/hermit/android/instruments/Gauge;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    .line 124
    iput p2, p0, Lorg/hermit/android/instruments/Gauge;->gaugeOptions:I

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    .line 129
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/hermit/android/instruments/Gauge;->initializePaint(Landroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;II)V
    .locals 1
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;
    .param p2, "grid"    # I
    .param p3, "plot"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;III)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;III)V
    .locals 3
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;
    .param p2, "options"    # I
    .param p3, "grid"    # I
    .param p4, "plot"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput v1, p0, Lorg/hermit/android/instruments/Gauge;->gaugeOptions:I

    .line 788
    iput-object v2, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    .line 794
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/hermit/android/instruments/Gauge;->colBg:I

    .line 797
    const v0, -0xff0100

    iput v0, p0, Lorg/hermit/android/instruments/Gauge;->gridColour:I

    .line 798
    const/high16 v0, -0x10000

    iput v0, p0, Lorg/hermit/android/instruments/Gauge;->plotColour:I

    .line 802
    iput-object v2, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 803
    iput-object v2, p0, Lorg/hermit/android/instruments/Gauge;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 155
    iput-object p1, p0, Lorg/hermit/android/instruments/Gauge;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    .line 156
    iput p2, p0, Lorg/hermit/android/instruments/Gauge;->gaugeOptions:I

    .line 157
    iput p3, p0, Lorg/hermit/android/instruments/Gauge;->gridColour:I

    .line 158
    iput p4, p0, Lorg/hermit/android/instruments/Gauge;->plotColour:I

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lorg/hermit/android/instruments/Gauge;->initializePaint(Landroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;II)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 627
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 628
    invoke-virtual {p0}, Lorg/hermit/android/instruments/Gauge;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 630
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lorg/hermit/android/instruments/Gauge;->drawBackgroundBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 632
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 633
    return-void
.end method

.method public static getBaseTextSize()F
    .locals 1

    .prologue
    .line 235
    sget v0, Lorg/hermit/android/instruments/Gauge;->baseTextSize:F

    return v0
.end method

.method public static getHeadTextSize()F
    .locals 1

    .prologue
    .line 255
    sget v0, Lorg/hermit/android/instruments/Gauge;->headTextSize:F

    return v0
.end method

.method public static getInnerGap()I
    .locals 1

    .prologue
    .line 378
    sget v0, Lorg/hermit/android/instruments/Gauge;->innerGap:I

    return v0
.end method

.method public static getInterPadding()I
    .locals 1

    .prologue
    .line 356
    sget v0, Lorg/hermit/android/instruments/Gauge;->interPadding:I

    return v0
.end method

.method public static getMiniTextSize()F
    .locals 1

    .prologue
    .line 275
    sget v0, Lorg/hermit/android/instruments/Gauge;->miniTextSize:F

    return v0
.end method

.method public static getSidebarWidth()I
    .locals 1

    .prologue
    .line 336
    sget v0, Lorg/hermit/android/instruments/Gauge;->viewSidebar:I

    return v0
.end method

.method public static getTextScaleX()F
    .locals 1

    .prologue
    .line 316
    sget v0, Lorg/hermit/android/instruments/Gauge;->textScaleX:F

    return v0
.end method

.method public static getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lorg/hermit/android/instruments/Gauge;->baseTextFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getTinyTextSize()F
    .locals 1

    .prologue
    .line 295
    sget v0, Lorg/hermit/android/instruments/Gauge;->tinyTextSize:F

    return v0
.end method

.method public static setBaseTextSize(F)V
    .locals 2
    .param p0, "size"    # F

    .prologue
    .line 222
    sput p0, Lorg/hermit/android/instruments/Gauge;->baseTextSize:F

    .line 223
    sget v0, Lorg/hermit/android/instruments/Gauge;->baseTextSize:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    sput v0, Lorg/hermit/android/instruments/Gauge;->headTextSize:F

    .line 224
    sget v0, Lorg/hermit/android/instruments/Gauge;->baseTextSize:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    sput v0, Lorg/hermit/android/instruments/Gauge;->miniTextSize:F

    .line 225
    sget v0, Lorg/hermit/android/instruments/Gauge;->baseTextSize:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    sput v0, Lorg/hermit/android/instruments/Gauge;->tinyTextSize:F

    .line 226
    return-void
.end method

.method public static setHeadTextSize(F)V
    .locals 0
    .param p0, "size"    # F

    .prologue
    .line 245
    sput p0, Lorg/hermit/android/instruments/Gauge;->headTextSize:F

    .line 246
    return-void
.end method

.method public static setInnerGap(I)V
    .locals 0
    .param p0, "gap"    # I

    .prologue
    .line 367
    sput p0, Lorg/hermit/android/instruments/Gauge;->innerGap:I

    .line 368
    return-void
.end method

.method public static setInterPadding(I)V
    .locals 0
    .param p0, "pad"    # I

    .prologue
    .line 346
    sput p0, Lorg/hermit/android/instruments/Gauge;->interPadding:I

    .line 347
    return-void
.end method

.method public static setMiniTextSize(F)V
    .locals 0
    .param p0, "size"    # F

    .prologue
    .line 265
    sput p0, Lorg/hermit/android/instruments/Gauge;->miniTextSize:F

    .line 266
    return-void
.end method

.method public static setSidebarWidth(I)V
    .locals 0
    .param p0, "width"    # I

    .prologue
    .line 326
    sput p0, Lorg/hermit/android/instruments/Gauge;->viewSidebar:I

    .line 327
    return-void
.end method

.method public static setTextScaleX(F)V
    .locals 0
    .param p0, "scale"    # F

    .prologue
    .line 306
    sput p0, Lorg/hermit/android/instruments/Gauge;->textScaleX:F

    .line 307
    return-void
.end method

.method public static setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "face"    # Landroid/graphics/Typeface;

    .prologue
    .line 202
    sput-object p0, Lorg/hermit/android/instruments/Gauge;->baseTextFace:Landroid/graphics/Typeface;

    .line 203
    return-void
.end method

.method public static setTinyTextSize(F)V
    .locals 0
    .param p0, "size"    # F

    .prologue
    .line 285
    sput p0, Lorg/hermit/android/instruments/Gauge;->tinyTextSize:F

    .line 286
    return-void
.end method


# virtual methods
.method protected cacheBackground()V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/hermit/android/instruments/Gauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 417
    iget-object v2, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 416
    invoke-virtual {v0, v1, v2}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 418
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 423
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/hermit/android/instruments/Gauge;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 424
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;JZ)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "now"    # J
    .param p4, "bg"    # Z

    .prologue
    .line 667
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/hermit/android/instruments/Gauge;->drawStart(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V

    .line 668
    if-eqz p4, :cond_0

    .line 669
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 671
    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 670
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 675
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/hermit/android/instruments/Gauge;->drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V

    .line 676
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/hermit/android/instruments/Gauge;->drawFinish(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V

    .line 677
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lorg/hermit/android/instruments/Gauge;->drawBackgroundBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Lorg/hermit/android/instruments/Gauge;->drawBackground(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method protected drawBackgroundBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 653
    return-void
.end method

.method protected drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 705
    iget v0, p0, Lorg/hermit/android/instruments/Gauge;->colBg:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 706
    return-void
.end method

.method protected drawFinish(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 718
    return-void
.end method

.method protected drawStart(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 689
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 690
    invoke-virtual {p0}, Lorg/hermit/android/instruments/Gauge;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 691
    return-void
.end method

.method public error(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 584
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lorg/hermit/android/instruments/Gauge;->colBg:I

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGridColor()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lorg/hermit/android/instruments/Gauge;->gridColour:I

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->drawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPlotColor()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lorg/hermit/android/instruments/Gauge;->plotColour:I

    return v0
.end method

.method public getPreferredHeight()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredWidth()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method protected getSurface()Lorg/hermit/android/core/SurfaceRunner;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    return-object v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final haveBounds()Z
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lorg/hermit/android/instruments/Gauge;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/hermit/android/instruments/Gauge;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 174
    return-void
.end method

.method public optionSet(I)Z
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 188
    iget v0, p0, Lorg/hermit/android/instruments/Gauge;->gaugeOptions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "col"    # I

    .prologue
    .line 505
    iput p1, p0, Lorg/hermit/android/instruments/Gauge;->colBg:I

    .line 506
    return-void
.end method

.method public setDataColors(II)V
    .locals 0
    .param p1, "grid"    # I
    .param p2, "plot"    # I

    .prologue
    .line 526
    iput p1, p0, Lorg/hermit/android/instruments/Gauge;->gridColour:I

    .line 527
    iput p2, p0, Lorg/hermit/android/instruments/Gauge;->plotColour:I

    .line 528
    return-void
.end method

.method public setGeometry(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 395
    iput-object p1, p0, Lorg/hermit/android/instruments/Gauge;->elemBounds:Landroid/graphics/Rect;

    .line 398
    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 399
    iput-object v0, p0, Lorg/hermit/android/instruments/Gauge;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 400
    return-void
.end method

.method public setGridColor(I)V
    .locals 0
    .param p1, "grid"    # I

    .prologue
    .line 537
    iput p1, p0, Lorg/hermit/android/instruments/Gauge;->gridColour:I

    .line 538
    return-void
.end method

.method public setPlotColor(I)V
    .locals 0
    .param p1, "plot"    # I

    .prologue
    .line 547
    iput p1, p0, Lorg/hermit/android/instruments/Gauge;->plotColour:I

    .line 548
    return-void
.end method
