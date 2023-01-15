.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.super Ljava/lang/Object;
.source "CanvasWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Canvas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;,
        Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$PathWrapper;,
        Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    }
.end annotation


# instance fields
.field private bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

.field public canvas:Landroid/graphics/Canvas;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field

.field private eraseMode:Landroid/graphics/PorterDuffXfermode;

.field private paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndSetTransparent(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->eraseMode:Landroid/graphics/PorterDuffXfermode;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->eraseMode:Landroid/graphics/PorterDuffXfermode;

    .line 95
    :cond_1
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->eraseMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method


# virtual methods
.method public ClipPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "Path1"    # Landroid/graphics/Path;

    .prologue
    .line 460
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 461
    return-void
.end method

.method public DrawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "Bitmap1"    # Landroid/graphics/Bitmap;
    .param p2, "SrcRect"    # Landroid/graphics/Rect;
    .param p3, "DestRect"    # Landroid/graphics/Rect;

    .prologue
    .line 242
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    return-void
.end method

.method public DrawBitmapFlipped(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 5
    .param p1, "Bitmap1"    # Landroid/graphics/Bitmap;
    .param p2, "SrcRect"    # Landroid/graphics/Rect;
    .param p3, "DestRect"    # Landroid/graphics/Rect;
    .param p4, "Vertically"    # Z
    .param p5, "Horizontally"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 272
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 274
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    if-eqz p5, :cond_0

    move v1, v2

    :goto_0
    int-to-float v1, v1

    if-eqz p4, :cond_1

    :goto_1
    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 280
    return-void

    :cond_0
    move v1, v3

    .line 274
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    throw v0
.end method

.method public DrawBitmapRotated(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3
    .param p1, "Bitmap1"    # Landroid/graphics/Bitmap;
    .param p2, "SrcRect"    # Landroid/graphics/Rect;
    .param p3, "DestRect"    # Landroid/graphics/Rect;
    .param p4, "Degrees"    # F

    .prologue
    .line 253
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 255
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 261
    return-void

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    throw v0
.end method

.method public DrawCircle(FFFIZF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "Radius"    # F
    .param p4, "Color"    # I
    .param p5, "Filled"    # Z
    .param p6, "StrokeWidth"    # F

    .prologue
    .line 216
    invoke-direct {p0, p4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 217
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p5, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 221
    return-void

    .line 218
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawColor(I)V
    .locals 2
    .param p1, "Color"    # I

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public DrawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "Drawable1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "DestRect"    # Landroid/graphics/Rect;

    .prologue
    .line 400
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 401
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    return-void
.end method

.method public DrawDrawableRotate(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;F)V
    .locals 3
    .param p1, "Drawable1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "DestRect"    # Landroid/graphics/Rect;
    .param p3, "Degrees"    # F

    .prologue
    .line 408
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 410
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 411
    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 415
    return-void

    .line 412
    :catchall_0
    move-exception v0

    .line 413
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 414
    throw v0
.end method

.method public DrawLine(FFFFIF)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "Color"    # I
    .param p6, "StrokeWidth"    # F

    .prologue
    .line 118
    invoke-direct {p0, p5}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 119
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public DrawOval(Landroid/graphics/Rect;IZF)V
    .locals 3
    .param p1, "Rect1"    # Landroid/graphics/Rect;
    .param p2, "Color"    # I
    .param p3, "Filled"    # Z
    .param p4, "StrokeWidth"    # F

    .prologue
    .line 149
    invoke-direct {p0, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 150
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    .line 155
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 156
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 157
    return-void

    .line 151
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawOvalRotated(Landroid/graphics/Rect;IZFF)V
    .locals 3
    .param p1, "Rect1"    # Landroid/graphics/Rect;
    .param p2, "Color"    # I
    .param p3, "Filled"    # Z
    .param p4, "StrokeWidth"    # F
    .param p5, "Degrees"    # F

    .prologue
    .line 165
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 167
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 168
    invoke-virtual {p0, p1, p2, p3, p4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawOval(Landroid/graphics/Rect;IZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    throw v0
.end method

.method public DrawPath(Landroid/graphics/Path;IZF)V
    .locals 2
    .param p1, "Path1"    # Landroid/graphics/Path;
    .param p2, "Color"    # I
    .param p3, "Filled"    # Z
    .param p4, "StrokeWidth"    # F

    .prologue
    .line 430
    invoke-direct {p0, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 431
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 435
    return-void

    .line 432
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawPoint(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "Color"    # I

    .prologue
    .line 380
    invoke-direct {p0, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 381
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 383
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 385
    return-void
.end method

.method public DrawRect(Landroid/graphics/Rect;IZF)V
    .locals 2
    .param p1, "Rect1"    # Landroid/graphics/Rect;
    .param p2, "Color"    # I
    .param p3, "Filled"    # Z
    .param p4, "StrokeWidth"    # F

    .prologue
    .line 186
    invoke-direct {p0, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 187
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    return-void

    .line 188
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawRectRotated(Landroid/graphics/Rect;IZFF)V
    .locals 3
    .param p1, "Rect1"    # Landroid/graphics/Rect;
    .param p2, "Color"    # I
    .param p3, "Filled"    # Z
    .param p4, "StrokeWidth"    # F
    .param p5, "Degrees"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 201
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawRect(Landroid/graphics/Rect;IZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 206
    return-void

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 205
    throw v0
.end method

.method public DrawText(Lanywheresoftware/b4a/BA;Ljava/lang/String;FFLandroid/graphics/Typeface;FILandroid/graphics/Paint$Align;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "Typeface1"    # Landroid/graphics/Typeface;
    .param p6, "TextSize"    # F
    .param p7, "Color"    # I
    .param p8, "Align1"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 294
    invoke-direct {p0, p7}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 295
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 296
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 298
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 300
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 301
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 303
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    return-void
.end method

.method public DrawTextRotated(Lanywheresoftware/b4a/BA;Ljava/lang/String;FFLandroid/graphics/Typeface;FILandroid/graphics/Paint$Align;F)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "Typeface1"    # Landroid/graphics/Typeface;
    .param p6, "TextSize"    # F
    .param p7, "Color"    # I
    .param p8, "Align1"    # Landroid/graphics/Paint$Align;
    .param p9, "Degree"    # F

    .prologue
    .line 320
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 322
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p9, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 323
    invoke-virtual/range {p0 .. p8}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawText(Lanywheresoftware/b4a/BA;Ljava/lang/String;FFLandroid/graphics/Typeface;FILandroid/graphics/Paint$Align;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 328
    return-void

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 327
    throw v0
.end method

.method public Initialize(Landroid/view/View;)V
    .locals 7
    .param p1, "Target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 74
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 76
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v3, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 85
    iget-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v3, v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public Initialize2(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap is not mutable."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    .line 106
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 107
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public MeasureStringHeight(Ljava/lang/String;Landroid/graphics/Typeface;F)F
    .locals 4
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "Typeface"    # Landroid/graphics/Typeface;
    .param p3, "TextSize"    # F

    .prologue
    .line 364
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 365
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 366
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 367
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 369
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 371
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public MeasureStringWidth(Ljava/lang/String;Landroid/graphics/Typeface;F)F
    .locals 2
    .param p1, "Text"    # Ljava/lang/String;
    .param p2, "Typeface"    # Landroid/graphics/Typeface;
    .param p3, "TextSize"    # F

    .prologue
    .line 343
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 344
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 345
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 346
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 348
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public RemoveClip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 467
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 468
    return-void
.end method

.method public getBitmap()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    return-object v0
.end method
