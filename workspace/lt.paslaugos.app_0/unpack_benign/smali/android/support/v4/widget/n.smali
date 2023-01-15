.class public Landroid/support/v4/widget/n;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/h/i;
.implements Landroid/support/v4/h/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/n$a;,
        Landroid/support/v4/widget/n$b;
    }
.end annotation


# static fields
.field private static final D:[I

.field private static final m:Ljava/lang/String; = "n"


# instance fields
.field private A:I

.field private B:Z

.field private final C:Landroid/view/animation/DecelerateInterpolator;

.field private E:I

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field private H:Landroid/view/animation/Animation;

.field private I:Landroid/view/animation/Animation;

.field private J:Landroid/view/animation/Animation;

.field private K:I

.field private L:Landroid/support/v4/widget/n$a;

.field private M:Landroid/view/animation/Animation$AnimationListener;

.field private final N:Landroid/view/animation/Animation;

.field private final O:Landroid/view/animation/Animation;

.field a:Landroid/support/v4/widget/n$b;

.field b:Z

.field c:I

.field d:Z

.field e:Landroid/support/v4/widget/c;

.field protected f:I

.field g:F

.field protected h:I

.field i:I

.field j:Landroid/support/v4/widget/d;

.field k:Z

.field l:Z

.field private n:Landroid/view/View;

.field private o:I

.field private p:F

.field private q:F

.field private final r:Landroid/support/v4/h/n;

.field private final s:Landroid/support/v4/h/k;

.field private final t:[I

.field private final u:[I

.field private v:Z

.field private w:I

.field private x:F

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/n;->D:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v4/widget/n;->p:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/widget/n;->t:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/widget/n;->u:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/n;->A:I

    iput v1, p0, Landroid/support/v4/widget/n;->E:I

    new-instance v1, Landroid/support/v4/widget/n$1;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/n$1;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->M:Landroid/view/animation/Animation$AnimationListener;

    new-instance v1, Landroid/support/v4/widget/n$6;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/n$6;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->N:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/widget/n$7;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/n$7;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->O:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/n;->o:I

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/n;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->C:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/n;->K:I

    invoke-direct {p0}, Landroid/support/v4/widget/n;->c()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/n;->setChildrenDrawingOrderEnabled(Z)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42800000    # 64.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/n;->i:I

    iget v1, p0, Landroid/support/v4/widget/n;->i:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/n;->p:F

    new-instance v1, Landroid/support/v4/h/n;

    invoke-direct {v1, p0}, Landroid/support/v4/h/n;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->r:Landroid/support/v4/h/n;

    new-instance v1, Landroid/support/v4/h/k;

    invoke-direct {v1, p0}, Landroid/support/v4/h/k;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/n;->setNestedScrollingEnabled(Z)V

    iget v1, p0, Landroid/support/v4/widget/n;->K:I

    neg-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/n;->c:I

    iput v1, p0, Landroid/support/v4/widget/n;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/n;->a(F)V

    sget-object v1, Landroid/support/v4/widget/n;->D:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/n;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/n$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/n$4;-><init>(Landroid/support/v4/widget/n;II)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->a(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Landroid/support/v4/widget/n;->f:I

    iget-object p1, p0, Landroid/support/v4/widget/n;->N:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->N:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->N:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/n;->C:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object p2, p0, Landroid/support/v4/widget/n;->N:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/n;->A:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/n;->A:I

    :cond_1
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->b:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Landroid/support/v4/widget/n;->k:Z

    invoke-direct {p0}, Landroid/support/v4/widget/n;->f()V

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->b:Z

    iget-boolean p1, p0, Landroid/support/v4/widget/n;->b:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v4/widget/n;->c:I

    iget-object p2, p0, Landroid/support/v4/widget/n;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/n;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/n;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(F)V
    .locals 11

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->a(Z)V

    iget v0, p0, Landroid/support/v4/widget/n;->p:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v4/widget/n;->p:F

    sub-float/2addr v3, v4

    iget-boolean v4, p0, Landroid/support/v4/widget/n;->l:Z

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/support/v4/widget/n;->i:I

    iget v5, p0, Landroid/support/v4/widget/n;->h:I

    sub-int/2addr v4, v5

    :goto_0
    int-to-float v4, v4

    goto :goto_1

    :cond_0
    iget v4, p0, Landroid/support/v4/widget/n;->i:I

    goto :goto_0

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v4

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float v3, v3, v5

    mul-float v7, v4, v3

    mul-float v7, v7, v5

    iget v8, p0, Landroid/support/v4/widget/n;->h:I

    mul-float v4, v4, v0

    add-float/2addr v4, v7

    float-to-int v0, v4

    add-int/2addr v8, v0

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/c;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/widget/n;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setScaleX(F)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setScaleY(F)V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/widget/n;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v4/widget/n;->p:F

    div-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    :cond_3
    iget v0, p0, Landroid/support/v4/widget/n;->p:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    iget-object p1, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {p1}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_5

    iget-object p1, p0, Landroid/support/v4/widget/n;->H:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Landroid/support/v4/widget/n;->d()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {p1}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Landroid/support/v4/widget/n;->I:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Landroid/support/v4/widget/n;->e()V

    :cond_5
    :goto_2
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v2, p1

    iget-object v4, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v4, v6, p1}, Landroid/support/v4/widget/d;->a(FF)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/d;->b(F)V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v0

    add-float/2addr v2, p1

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v2, v2, p1

    iget-object p1, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {p1, v2}, Landroid/support/v4/widget/d;->c(F)V

    iget p1, p0, Landroid/support/v4/widget/n;->c:I

    sub-int/2addr v8, p1

    invoke-virtual {p0, v8}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/n;->c(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/support/v4/widget/n;->f:I

    iget-object p1, p0, Landroid/support/v4/widget/n;->O:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->O:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->O:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/n;->C:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object p2, p0, Landroid/support/v4/widget/n;->O:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    new-instance v0, Landroid/support/v4/widget/n$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$2;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->F:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/n;->F:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/n;->w:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object v0, p0, Landroid/support/v4/widget/n;->F:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/support/v4/widget/c;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    new-instance v0, Landroid/support/v4/widget/d;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->a(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c(F)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/n;->p:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Landroid/support/v4/widget/n;->a(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->b:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/d;->a(FF)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->d:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/n$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$5;-><init>(Landroid/support/v4/widget/n;)V

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/n;->c:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/n;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(Z)V

    :goto_0
    return-void
.end method

.method private c(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Landroid/support/v4/widget/n;->f:I

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->getScaleX()F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/n;->g:F

    new-instance p1, Landroid/support/v4/widget/n$8;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/n$8;-><init>(Landroid/support/v4/widget/n;)V

    iput-object p1, p0, Landroid/support/v4/widget/n;->J:Landroid/view/animation/Animation;

    iget-object p1, p0, Landroid/support/v4/widget/n;->J:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object p2, p0, Landroid/support/v4/widget/n;->J:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/n;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/n;->H:Landroid/view/animation/Animation;

    return-void
.end method

.method private d(F)V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Landroid/support/v4/widget/n;->o:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/widget/n;->z:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v4/widget/n;->y:F

    iget v0, p0, Landroid/support/v4/widget/n;->o:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Landroid/support/v4/widget/n;->x:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->z:Z

    iget-object p1, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/d;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/n;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/n;->I:Landroid/view/animation/Animation;

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->stop()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/n;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/n;->h:I

    iget v1, p0, Landroid/support/v4/widget/n;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->c:I

    return-void
.end method

.method a(F)V
    .locals 3

    iget v0, p0, Landroid/support/v4/widget/n;->f:I

    iget v1, p0, Landroid/support/v4/widget/n;->h:I

    iget v2, p0, Landroid/support/v4/widget/n;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    new-instance v0, Landroid/support/v4/widget/n$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$3;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->G:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/n;->G:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->a(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object v0, p0, Landroid/support/v4/widget/n;->G:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->L:Landroid/support/v4/widget/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->L:Landroid/support/v4/widget/n$a;

    iget-object v1, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/n$a;->a(Landroid/support/v4/widget/n;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v1}, Landroid/support/v4/widget/k;->b(Landroid/widget/ListView;I)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/h/k;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/k;->a(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/h/k;->a(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/h/k;->a(IIII[I)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->E:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    iget p1, p0, Landroid/support/v4/widget/n;->E:I

    return p1

    :cond_1
    iget p1, p0, Landroid/support/v4/widget/n;->E:I

    if-lt p2, p1, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->r:Landroid/support/v4/h/n;

    invoke-virtual {v0}, Landroid/support/v4/h/n;->a()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->K:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->i:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->h:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0}, Landroid/support/v4/h/k;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0}, Landroid/support/v4/h/k;->a()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->a()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/widget/n;->f()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->B:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->B:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->B:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->b()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->b:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->v:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/support/v4/widget/n;->A:I

    if-ne v0, v1, :cond_2

    sget-object p1, Landroid/support/v4/widget/n;->m:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/n;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->d(F)V

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Landroid/support/v4/widget/n;->z:Z

    iput v1, p0, Landroid/support/v4/widget/n;->A:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/support/v4/widget/n;->h:I

    iget-object v1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->A:I

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->z:Z

    iget v0, p0, Landroid/support/v4/widget/n;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/n;->y:F

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/MotionEvent;)V

    :goto_0
    iget-boolean p1, p0, Landroid/support/v4/widget/n;->z:Z

    return p1

    :cond_6
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/n;->f()V

    :cond_1
    iget-object p3, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p2}, Landroid/support/v4/widget/c;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p3}, Landroid/support/v4/widget/c;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Landroid/support/v4/widget/n;->c:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v4/widget/n;->c:I

    add-int/2addr p2, p3

    invoke-virtual {p4, p5, v0, p1, p2}, Landroid/support/v4/widget/c;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/n;->f()V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget p2, p0, Landroid/support/v4/widget/n;->K:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Landroid/support/v4/widget/n;->K:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/widget/c;->measure(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/n;->E:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    if-ne p2, v0, :cond_2

    iput p1, p0, Landroid/support/v4/widget/n;->E:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/n;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/n;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_1

    iget v1, p0, Landroid/support/v4/widget/n;->q:F

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1

    int-to-float v1, p3

    iget v2, p0, Landroid/support/v4/widget/n;->q:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v1, p0, Landroid/support/v4/widget/n;->q:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v0

    iput p1, p0, Landroid/support/v4/widget/n;->q:F

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v4/widget/n;->q:F

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/support/v4/widget/n;->q:F

    aput p3, p4, v0

    :goto_0
    iget v1, p0, Landroid/support/v4/widget/n;->q:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/n;->b(F)V

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/widget/n;->l:Z

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    iget v1, p0, Landroid/support/v4/widget/n;->q:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    aget p1, p4, v0

    sub-int p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/c;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Landroid/support/v4/widget/n;->t:[I

    const/4 v1, 0x0

    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Landroid/support/v4/widget/n;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_3

    aget p2, p4, v1

    aget p3, p1, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    aget p2, p4, v0

    aget p1, p1, v0

    add-int/2addr p2, p1

    aput p2, p4, v0

    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    iget-object v5, p0, Landroid/support/v4/widget/n;->u:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/n;->dispatchNestedScroll(IIII[I)Z

    iget-object p1, p0, Landroid/support/v4/widget/n;->u:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v4/widget/n;->q:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v4/widget/n;->q:F

    iget p1, p0, Landroid/support/v4/widget/n;->q:F

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->b(F)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->r:Landroid/support/v4/h/n;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/h/n;->a(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->startNestedScroll(I)Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/n;->q:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->v:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/widget/n;->B:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v4/widget/n;->b:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->r:Landroid/support/v4/h/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/n;->a(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->v:Z

    iget p1, p0, Landroid/support/v4/widget/n;->q:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Landroid/support/v4/widget/n;->q:F

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->c(F)V

    iput v0, p0, Landroid/support/v4/widget/n;->q:F

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->B:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->B:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->B:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->b()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->b:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->v:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-gez v0, :cond_2

    sget-object p1, Landroid/support/v4/widget/n;->m:Ljava/lang/String;

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/n;->A:I

    goto :goto_0

    :pswitch_3
    return v2

    :pswitch_4
    iget v0, p0, Landroid/support/v4/widget/n;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_3

    sget-object p1, Landroid/support/v4/widget/n;->m:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->d(F)V

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->z:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/widget/n;->x:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->b(F)V

    goto :goto_0

    :cond_4
    return v2

    :pswitch_5
    iget v0, p0, Landroid/support/v4/widget/n;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    sget-object p1, Landroid/support/v4/widget/n;->m:Ljava/lang/String;

    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-boolean v3, p0, Landroid/support/v4/widget/n;->z:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Landroid/support/v4/widget/n;->x:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v1

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->z:Z

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->c(F)V

    :cond_6
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/n;->A:I

    return v2

    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/n;->A:I

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->z:Z

    :cond_7
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/n;->n:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/q;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->setScaleX(F)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/widget/n;->f()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-static {v0, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/n;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v4/widget/n;->p:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->a()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/k;->a(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/n$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n;->L:Landroid/support/v4/widget/n$a;

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/n$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$b;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->b:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->b:Z

    iget-boolean p1, p0, Landroid/support/v4/widget/n;->l:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroid/support/v4/widget/n;->i:I

    iget v1, p0, Landroid/support/v4/widget/n;->h:I

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/support/v4/widget/n;->i:I

    :goto_0
    iget v1, p0, Landroid/support/v4/widget/n;->c:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->k:Z

    iget-object p1, p0, Landroid/support/v4/widget/n;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->b(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/n;->a(ZZ)V

    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/n;->K:I

    goto :goto_1

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(I)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    iget-object v0, p0, Landroid/support/v4/widget/n;->j:Landroid/support/v4/widget/d;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->bringToFront()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-static {v0, p1}, Landroid/support/v4/h/q;->c(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/v4/widget/n;->e:Landroid/support/v4/widget/c;

    invoke-virtual {p1}, Landroid/support/v4/widget/c;->getTop()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/n;->c:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/k;->b(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->s:Landroid/support/v4/h/k;

    invoke-virtual {v0}, Landroid/support/v4/h/k;->c()V

    return-void
.end method
