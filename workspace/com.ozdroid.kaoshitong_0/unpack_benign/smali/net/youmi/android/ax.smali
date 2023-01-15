.class Lnet/youmi/android/ax;
.super Landroid/view/animation/Animation;


# instance fields
.field a:Ljava/util/Random;

.field private final b:F

.field private final c:F

.field private d:F

.field private e:F

.field private final f:F

.field private final g:Z

.field private h:Landroid/graphics/Camera;


# direct methods
.method constructor <init>(FFFFFZ)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ax;->a:Ljava/util/Random;

    iput p1, p0, Lnet/youmi/android/ax;->b:F

    iput p2, p0, Lnet/youmi/android/ax;->c:F

    iput p3, p0, Lnet/youmi/android/ax;->d:F

    iput p4, p0, Lnet/youmi/android/ax;->e:F

    iput p5, p0, Lnet/youmi/android/ax;->f:F

    iput-boolean p6, p0, Lnet/youmi/android/ax;->g:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lnet/youmi/android/ax;->b:F

    iget v1, p0, Lnet/youmi/android/ax;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lnet/youmi/android/ax;->d:F

    iget v2, p0, Lnet/youmi/android/ax;->e:F

    iget-object v3, p0, Lnet/youmi/android/ax;->h:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-boolean v5, p0, Lnet/youmi/android/ax;->g:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lnet/youmi/android/ax;->f:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    iget v5, p0, Lnet/youmi/android/ax;->f:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ax;->h:Landroid/graphics/Camera;

    return-void
.end method
