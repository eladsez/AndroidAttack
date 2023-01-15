.class public abstract Lorg/hermit/android/instruments/InstrumentSurface;
.super Lorg/hermit/android/core/SurfaceRunner;
.source "InstrumentSurface.java"


# static fields
.field public static final SURFACE_CACHE_BG:I = 0x100

.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundCanvas:Landroid/graphics/Canvas;

.field private gaugeArray:[Lorg/hermit/android/instruments/Gauge;

.field private gauges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/hermit/android/instruments/Gauge;",
            ">;"
        }
    .end annotation
.end field

.field private instrumentArray:[Lorg/hermit/android/instruments/Instrument;

.field private instruments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/hermit/android/instruments/Instrument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Lorg/hermit/android/core/SurfaceRunner;-><init>(Landroid/content/Context;)V

    .line 352
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    .line 353
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    .line 356
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    .line 357
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gaugeArray:[Lorg/hermit/android/instruments/Gauge;

    .line 362
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 363
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 80
    invoke-direct {p0}, Lorg/hermit/android/instruments/InstrumentSurface;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "options"    # I

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/hermit/android/core/SurfaceRunner;-><init>(Landroid/content/Context;I)V

    .line 352
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    .line 353
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    .line 356
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    .line 357
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gaugeArray:[Lorg/hermit/android/instruments/Gauge;

    .line 362
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 363
    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 93
    invoke-direct {p0}, Lorg/hermit/android/instruments/InstrumentSurface;->init()V

    .line 94
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    .line 103
    return-void
.end method

.method private setBackground(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 268
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lorg/hermit/android/instruments/InstrumentSurface;->optionSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0, p1, p2}, Lorg/hermit/android/instruments/InstrumentSurface;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 272
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundCanvas:Landroid/graphics/Canvas;

    .line 275
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 276
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    :goto_1
    return-void

    .line 276
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/instruments/Gauge;

    .line 277
    .local v0, "g":Lorg/hermit/android/instruments/Gauge;
    iget-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lorg/hermit/android/instruments/Gauge;->drawBackground(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 279
    .end local v0    # "g":Lorg/hermit/android/instruments/Gauge;
    :cond_1
    iput-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 280
    iput-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundCanvas:Landroid/graphics/Canvas;

    goto :goto_1
.end method


# virtual methods
.method public addGauge(Lorg/hermit/android/instruments/Gauge;)V
    .locals 1
    .param p1, "i"    # Lorg/hermit/android/instruments/Gauge;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public addInstrument(Lorg/hermit/android/instruments/Instrument;)V
    .locals 1
    .param p1, "i"    # Lorg/hermit/android/instruments/Instrument;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method protected animStart()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/hermit/android/instruments/Instrument;

    iput-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    .line 222
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/hermit/android/instruments/Gauge;

    iput-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gaugeArray:[Lorg/hermit/android/instruments/Gauge;

    .line 224
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gaugeArray:[Lorg/hermit/android/instruments/Gauge;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 229
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/hermit/android/instruments/Instrument;->measureStart()V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected animStop()V
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 244
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/hermit/android/instruments/Instrument;->measureStop()V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected appSize(IILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/hermit/android/instruments/InstrumentSurface;->layout(II)V

    .line 207
    invoke-direct {p0, p1, p2}, Lorg/hermit/android/instruments/InstrumentSurface;->setBackground(II)V

    .line 208
    return-void
.end method

.method protected appStart()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    return-void

    .line 185
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/instruments/Instrument;

    .line 186
    .local v0, "i":Lorg/hermit/android/instruments/Instrument;
    invoke-virtual {v0}, Lorg/hermit/android/instruments/Instrument;->appStart()V

    goto :goto_0
.end method

.method protected appStop()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instruments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    return-void

    .line 252
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/instruments/Instrument;

    .line 253
    .local v0, "i":Lorg/hermit/android/instruments/Instrument;
    invoke-virtual {v0}, Lorg/hermit/android/instruments/Instrument;->appStop()V

    goto :goto_0
.end method

.method public clearGauges()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gauges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    return-void
.end method

.method protected doDraw(Landroid/graphics/Canvas;J)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "now"    # J

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v3, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 329
    :goto_0
    iget-object v3, p0, Lorg/hermit/android/instruments/InstrumentSurface;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 332
    .local v2, "needBg":Z
    :goto_1
    iget-object v3, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gaugeArray:[Lorg/hermit/android/instruments/Gauge;

    array-length v1, v3

    .line 333
    .local v1, "gl":I
    const/4 v0, 0x0

    .local v0, "g":I
    :goto_2
    if-lt v0, v1, :cond_2

    .line 335
    return-void

    .line 328
    .end local v0    # "g":I
    .end local v1    # "gl":I
    .end local v2    # "needBg":Z
    :cond_0
    const/high16 v3, -0x1000000

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 334
    .restart local v0    # "g":I
    .restart local v1    # "gl":I
    .restart local v2    # "needBg":Z
    :cond_2
    iget-object v3, p0, Lorg/hermit/android/instruments/InstrumentSurface;->gaugeArray:[Lorg/hermit/android/instruments/Gauge;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2, p3, v2}, Lorg/hermit/android/instruments/Gauge;->draw(Landroid/graphics/Canvas;JZ)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected doUpdate(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 304
    iget-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    array-length v1, v2

    .line 305
    .local v1, "il":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 307
    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lorg/hermit/android/instruments/InstrumentSurface;->instrumentArray:[Lorg/hermit/android/instruments/Instrument;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lorg/hermit/android/instruments/Instrument;->doUpdate(J)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract layout(II)V
.end method
