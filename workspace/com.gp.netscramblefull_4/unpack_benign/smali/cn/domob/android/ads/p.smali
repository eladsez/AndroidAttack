.class final Lcn/domob/android/ads/p;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput p1, p0, Lcn/domob/android/ads/p;->a:F

    .line 39
    iput p2, p0, Lcn/domob/android/ads/p;->b:F

    .line 40
    iput p3, p0, Lcn/domob/android/ads/p;->c:F

    .line 41
    iput p4, p0, Lcn/domob/android/ads/p;->d:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/p;->e:F

    .line 43
    iput-boolean p6, p0, Lcn/domob/android/ads/p;->f:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    .line 54
    iget v0, p0, Lcn/domob/android/ads/p;->a:F

    .line 55
    iget v1, p0, Lcn/domob/android/ads/p;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 57
    iget v1, p0, Lcn/domob/android/ads/p;->c:F

    .line 58
    iget v2, p0, Lcn/domob/android/ads/p;->d:F

    .line 59
    iget-object v3, p0, Lcn/domob/android/ads/p;->g:Landroid/graphics/Camera;

    .line 61
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 64
    iget-boolean v5, p0, Lcn/domob/android/ads/p;->f:Z

    if-eqz v5, :cond_0

    .line 65
    iget v5, p0, Lcn/domob/android/ads/p;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 69
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 70
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 71
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 73
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 74
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 75
    return-void

    .line 67
    :cond_0
    iget v5, p0, Lcn/domob/android/ads/p;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 49
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/p;->g:Landroid/graphics/Camera;

    .line 50
    return-void
.end method
