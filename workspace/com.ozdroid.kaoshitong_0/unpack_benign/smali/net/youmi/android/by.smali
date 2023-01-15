.class Lnet/youmi/android/by;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field static final e:I

.field static final f:I

.field static final g:Landroid/graphics/LinearGradient;

.field static final h:Landroid/graphics/LinearGradient;

.field static final i:Landroid/graphics/LinearGradient;

.field static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0x80

    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x0

    const/16 v0, 0xa0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/by;->a:I

    const/16 v0, 0x32

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/by;->b:I

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/by;->c:I

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/by;->d:I

    const/16 v0, 0x50

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/by;->e:I

    const/16 v0, 0x96

    const/16 v2, 0x87

    const/16 v3, 0xce

    const/16 v4, 0xfa

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/by;->f:I

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x41980000    # 19.0f

    sget v5, Lnet/youmi/android/by;->a:I

    sget v6, Lnet/youmi/android/by;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lnet/youmi/android/by;->g:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x41c00000    # 24.0f

    sget v5, Lnet/youmi/android/by;->a:I

    sget v6, Lnet/youmi/android/by;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lnet/youmi/android/by;->h:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x42000000    # 32.0f

    sget v5, Lnet/youmi/android/by;->a:I

    sget v6, Lnet/youmi/android/by;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lnet/youmi/android/by;->i:Landroid/graphics/LinearGradient;

    const-string v0, "\u6709\u7c73\u63a8\u8350,\u7cbe\u5f69\u65e0\u9650!"

    sput-object v0, Lnet/youmi/android/by;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIII)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/by;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(I)Landroid/graphics/LinearGradient;
    .locals 1

    const/16 v0, 0x26

    if-ne p0, v0, :cond_0

    sget-object v0, Lnet/youmi/android/by;->g:Landroid/graphics/LinearGradient;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x30

    if-ne p0, v0, :cond_1

    sget-object v0, Lnet/youmi/android/by;->h:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/youmi/android/by;->i:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    invoke-static {p3}, Lnet/youmi/android/by;->a(I)Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, p3, 0x2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    sget v1, Lnet/youmi/android/by;->d:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p2

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    sget v1, Lnet/youmi/android/by;->c:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    sget v1, Lnet/youmi/android/by;->e:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    sub-int v2, p3, v7

    int-to-float v2, v2

    int-to-float v3, p2

    sub-int v4, p3, v7

    int-to-float v4, v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v0, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbf

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
