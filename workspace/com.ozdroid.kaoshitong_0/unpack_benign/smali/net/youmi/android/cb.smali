.class Lnet/youmi/android/cb;
.super Landroid/widget/ImageView;

# interfaces
.implements Lnet/youmi/android/m;


# instance fields
.field a:Lnet/youmi/android/s;

.field b:I

.field c:Z

.field d:Lnet/youmi/android/at;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/s;Lnet/youmi/android/at;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/cb;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/cb;->c:Z

    iput-object p3, p0, Lnet/youmi/android/cb;->d:Lnet/youmi/android/at;

    invoke-virtual {p0, p1, p2, p4}, Lnet/youmi/android/cb;->a(Landroid/content/Context;Lnet/youmi/android/s;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lnet/youmi/android/s;I)V
    .locals 3

    iput-object p2, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/s;

    iput p3, p0, Lnet/youmi/android/cb;->b:I

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lnet/youmi/android/cb;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-interface {p2}, Lnet/youmi/android/s;->b()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x30

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height of ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/cb;->setMinimumHeight(I)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/cb;->setMaxHeight(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/cb;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/y;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/y;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "new Image"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/youmi/android/y;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v1, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/s;

    invoke-interface {v1}, Lnet/youmi/android/s;->c()I

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/cb;->a:Lnet/youmi/android/s;

    invoke-interface {v2}, Lnet/youmi/android/s;->b()I

    move-result v2

    int-to-float v1, v1

    int-to-float v5, v3

    div-float/2addr v1, v5

    int-to-float v2, v2

    int-to-float v5, v4

    div-float/2addr v2, v5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lnet/youmi/android/cb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cb;->b:I

    return v0
.end method

.method public b(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/cb;->c:Z

    invoke-virtual {p0, v0}, Lnet/youmi/android/cb;->setVisibility(I)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/cb;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/cb;->c:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/cb;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/cb;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/cb;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/cb;->d:Lnet/youmi/android/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cb;->d:Lnet/youmi/android/at;

    invoke-virtual {v0}, Lnet/youmi/android/at;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
