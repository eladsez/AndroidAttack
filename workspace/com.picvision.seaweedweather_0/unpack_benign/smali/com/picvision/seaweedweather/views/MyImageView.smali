.class public Lcom/picvision/seaweedweather/views/MyImageView;
.super Landroid/widget/ImageView;
.source "MyImageView.java"


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private imageId:I

.field private isHmove:Z

.field private isThisMove:Z

.field private movePositon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    .line 36
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    .line 52
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    .line 44
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isHmove:Z

    if-eqz v1, :cond_2

    .line 77
    iget v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    iget-object v2, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4}, Lcom/picvision/seaweedweather/utils/Util;->setwWidth(Landroid/content/Context;D)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    .line 80
    :cond_0
    iget-boolean v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    if-eqz v1, :cond_1

    .line 81
    iget v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    add-int/lit8 v3, v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v7}, Lcom/picvision/seaweedweather/utils/Util;->setwWidth(Landroid/content/Context;D)I

    move-result v5

    iget v6, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8}, Lcom/picvision/seaweedweather/utils/Util;->setwWidth(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide v8, 0x3fdb555555555555L    # 0.4270833333333333

    invoke-static {v7, v8, v9}, Lcom/picvision/seaweedweather/utils/Util;->setwHeight(Landroid/content/Context;D)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iput-boolean v10, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    .line 99
    return-void

    .line 84
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4}, Lcom/picvision/seaweedweather/utils/Util;->setwHeight(Landroid/content/Context;D)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_3

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    .line 87
    :cond_3
    iget-boolean v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    if-eqz v1, :cond_4

    .line 88
    iget v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v7}, Lcom/picvision/seaweedweather/utils/Util;->setwHeight(Landroid/content/Context;D)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v7}, Lcom/picvision/seaweedweather/utils/Util;->setwWidth(Landroid/content/Context;D)I

    move-result v5

    iget-object v6, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/picvision/seaweedweather/views/MyImageView;->movePositon:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8}, Lcom/picvision/seaweedweather/utils/Util;->setwWidth(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/picvision/seaweedweather/views/MyImageView;->context:Landroid/content/Context;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v9}, Lcom/picvision/seaweedweather/utils/Util;->setwHeight(Landroid/content/Context;D)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setImage(IZ)V
    .locals 1
    .param p1, "imageId"    # I
    .param p2, "isHmove"    # Z

    .prologue
    .line 60
    iput-boolean p2, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isHmove:Z

    .line 62
    iget v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->imageId:I

    if-eq v0, p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/views/MyImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->bm:Landroid/graphics/Bitmap;

    .line 66
    :cond_1
    iput p1, p0, Lcom/picvision/seaweedweather/views/MyImageView;->imageId:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/MyImageView;->isThisMove:Z

    .line 68
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/views/MyImageView;->invalidate()V

    .line 69
    return-void
.end method
