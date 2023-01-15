.class public Lcom/picvision/seaweedweather/views/ReImageView;
.super Landroid/widget/ImageView;
.source "ReImageView.java"


# instance fields
.field bm:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/ReImageView;->context:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    .line 26
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/ReImageView;->context:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    .line 51
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/ReImageView;->context:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 39
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    .line 40
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v8, 0xc8

    .line 67
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    :try_start_0
    iget-object v6, p0, Lcom/picvision/seaweedweather/views/ReImageView;->fileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/picvision/seaweedweather/views/ReImageView;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    .line 71
    iget-object v6, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 72
    .local v5, "width":I
    iget-object v6, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 73
    .local v1, "height":I
    const/high16 v6, 0x42f00000    # 120.0f

    int-to-float v7, v5

    div-float v4, v6, v7

    .line 74
    .local v4, "scaleWidth":F
    const/high16 v6, 0x43160000    # 150.0f

    int-to-float v7, v1

    div-float v3, v6, v7

    .line 75
    .local v3, "scaleHeight":F
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 77
    iget-object v6, p0, Lcom/picvision/seaweedweather/views/ReImageView;->bm:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "height":I
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "scaleHeight":F
    .end local v4    # "scaleWidth":F
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 81
    .local v0, "e":Ljava/lang/NullPointerException;
    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-static {v6, v8, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/picvision/seaweedweather/views/ReImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/ReImageView;->fileName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/views/ReImageView;->invalidate()V

    .line 62
    return-void
.end method
