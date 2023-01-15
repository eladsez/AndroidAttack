.class Landroid/support/v7/widget/ak;
.super Landroid/support/v7/widget/av$h;

# interfaces
.implements Landroid/support/v7/widget/av$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ak$b;,
        Landroid/support/v7/widget/ak$a;
    }
.end annotation


# static fields
.field private static final g:[I

.field private static final h:[I


# instance fields
.field private final A:[I

.field private final B:Landroid/animation/ValueAnimator;

.field private C:I

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroid/support/v7/widget/av$n;

.field a:I

.field b:I

.field c:F

.field d:I

.field e:I

.field f:F

.field private final i:I

.field private final j:I

.field private final k:Landroid/graphics/drawable/StateListDrawable;

.field private final l:Landroid/graphics/drawable/Drawable;

.field private final m:I

.field private final n:I

.field private final o:Landroid/graphics/drawable/StateListDrawable;

.field private final p:Landroid/graphics/drawable/Drawable;

.field private final q:I

.field private final r:I

.field private s:I

.field private t:I

.field private u:Landroid/support/v7/widget/av;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ak;->g:[I

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v7/widget/ak;->h:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/av;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/av$h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ak;->s:I

    iput v0, p0, Landroid/support/v7/widget/ak;->t:I

    iput-boolean v0, p0, Landroid/support/v7/widget/ak;->v:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ak;->w:Z

    iput v0, p0, Landroid/support/v7/widget/ak;->x:I

    iput v0, p0, Landroid/support/v7/widget/ak;->y:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/ak;->z:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/ak;->A:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    iput v0, p0, Landroid/support/v7/widget/ak;->C:I

    new-instance v0, Landroid/support/v7/widget/ak$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ak$1;-><init>(Landroid/support/v7/widget/ak;)V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->D:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/ak$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ak$2;-><init>(Landroid/support/v7/widget/ak;)V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->E:Landroid/support/v7/widget/av$n;

    iput-object p2, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroid/support/v7/widget/ak;->l:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroid/support/v7/widget/ak;->o:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroid/support/v7/widget/ak;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ak;->m:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ak;->n:I

    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ak;->q:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ak;->r:I

    iput p7, p0, Landroid/support/v7/widget/ak;->i:I

    iput p8, p0, Landroid/support/v7/widget/ak;->j:I

    iget-object p2, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object p2, p0, Landroid/support/v7/widget/ak;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/ak$a;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Landroid/support/v7/widget/ak$a;-><init>(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$1;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/ak$b;

    invoke-direct {p3, p0, p4}, Landroid/support/v7/widget/ak$b;-><init>(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/ak$1;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/av;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic a(Landroid/support/v7/widget/ak;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ak;->C:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/ak;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private a(F)V
    .locals 8

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->g()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/ak;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ak;->c:F

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/ak;->t:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ak;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/av;->scrollBy(II)V

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/ak;->c:F

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/ak;->s:I

    iget v1, p0, Landroid/support/v7/widget/ak;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ak;->b:I

    iget v2, p0, Landroid/support/v7/widget/ak;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/ak;->m:I

    iget v4, p0, Landroid/support/v7/widget/ak;->a:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/ak;->l:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/ak;->n:I

    iget v4, p0, Landroid/support/v7/widget/ak;->t:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/ak;->m:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Landroid/support/v7/widget/ak;->m:I

    :goto_0
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_0
    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ak;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/av$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/av$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->E:Landroid/support/v7/widget/av$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/av$n;)V

    return-void
.end method

.method private b(F)V
    .locals 8

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->h()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/ak;->e:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ak;->f:F

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/ak;->s:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ak;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/av;->scrollBy(II)V

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/ak;->f:F

    return-void
.end method

.method private b(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/ak;->x:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/support/v7/widget/ak;->g:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->f()V

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->a()V

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/ak;->x:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/ak;->h:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/ak;->c(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    goto :goto_1

    :cond_3
    :goto_2
    iput p1, p0, Landroid/support/v7/widget/ak;->x:I

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/ak;->t:I

    iget v1, p0, Landroid/support/v7/widget/ak;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ak;->e:I

    iget v2, p0, Landroid/support/v7/widget/ak;->d:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/ak;->o:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/ak;->d:I

    iget v4, p0, Landroid/support/v7/widget/ak;->q:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/ak;->p:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/ak;->s:I

    iget v4, p0, Landroid/support/v7/widget/ak;->r:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ak;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ak;->o:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/ak;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->d()V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/ak;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->b(I)V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/ak;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/ak;->k:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/av;->b(Landroid/support/v7/widget/av$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/av;->b(Landroid/support/v7/widget/av$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->E:Landroid/support/v7/widget/av$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->b(Landroid/support/v7/widget/av$n;)V

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->f()V

    return-void
.end method

.method private c(I)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/av;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/ak;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/ak;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->invalidate()V

    return-void
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v4/h/q;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private g()[I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak;->z:[I

    iget v1, p0, Landroid/support/v7/widget/ak;->j:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->z:[I

    iget v1, p0, Landroid/support/v7/widget/ak;->t:I

    iget v2, p0, Landroid/support/v7/widget/ak;->j:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->z:[I

    return-object v0
.end method

.method private h()[I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak;->A:[I

    iget v1, p0, Landroid/support/v7/widget/ak;->j:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->A:[I

    iget v1, p0, Landroid/support/v7/widget/ak;->s:I

    iget v2, p0, Landroid/support/v7/widget/ak;->j:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/widget/ak;->A:[I

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/ak;->C:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ak;->C:I

    iget-object v1, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method a(I)V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/ak;->C:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/ak;->C:I

    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/ak;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(II)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/ak;->t:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/ak;->t:I

    iget v5, p0, Landroid/support/v7/widget/ak;->i:I

    if-lt v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/ak;->v:Z

    iget-object v2, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->computeHorizontalScrollRange()I

    move-result v2

    iget v5, p0, Landroid/support/v7/widget/ak;->s:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p0, Landroid/support/v7/widget/ak;->s:I

    iget v7, p0, Landroid/support/v7/widget/ak;->i:I

    if-lt v6, v7, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Landroid/support/v7/widget/ak;->w:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/ak;->v:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Landroid/support/v7/widget/ak;->w:Z

    if-nez v6, :cond_3

    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-eqz p1, :cond_2

    invoke-direct {p0, v3}, Landroid/support/v7/widget/ak;->b(I)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/ak;->v:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v7, v3, v6

    add-float/2addr p2, v7

    mul-float/2addr v3, p2

    int-to-float p2, v0

    div-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p0, Landroid/support/v7/widget/ak;->b:I

    mul-int p2, v1, v1

    div-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ak;->a:I

    :cond_4
    iget-boolean p2, p0, Landroid/support/v7/widget/ak;->w:Z

    if-eqz p2, :cond_5

    int-to-float p1, p1

    int-to-float p2, v5

    div-float v0, p2, v6

    add-float/2addr p1, v0

    mul-float/2addr p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/ak;->e:I

    mul-int p1, v5, v5

    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ak;->d:I

    :cond_5
    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-eqz p1, :cond_6

    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-ne p1, v4, :cond_7

    :cond_6
    invoke-direct {p0, v4}, Landroid/support/v7/widget/ak;->b(I)V

    :cond_7
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/av;Landroid/support/v7/widget/av$u;)V
    .locals 0

    iget p2, p0, Landroid/support/v7/widget/ak;->s:I

    iget-object p3, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {p3}, Landroid/support/v7/widget/av;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Landroid/support/v7/widget/ak;->t:I

    iget-object p3, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {p3}, Landroid/support/v7/widget/av;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/support/v7/widget/ak;->C:I

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Landroid/support/v7/widget/ak;->v:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->a(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean p2, p0, Landroid/support/v7/widget/ak;->w:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ak;->s:I

    iget-object p1, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ak;->t:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->b(I)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/av;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->c()V

    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    iget-object p1, p0, Landroid/support/v7/widget/ak;->u:Landroid/support/v7/widget/av;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->b()V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method a(FF)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ak;->m:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ak;->s:I

    iget v1, p0, Landroid/support/v7/widget/ak;->m:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Landroid/support/v7/widget/ak;->b:I

    iget v0, p0, Landroid/support/v7/widget/ak;->a:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/ak;->b:I

    iget v0, p0, Landroid/support/v7/widget/ak;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/support/v7/widget/av;Landroid/view/MotionEvent;)Z
    .locals 5

    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/ak;->a(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/ak;->b(FF)Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    iput v2, p0, Landroid/support/v7/widget/ak;->y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/ak;->f:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput v1, p0, Landroid/support/v7/widget/ak;->y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/ak;->c:F

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ak;->b(I)V

    goto :goto_1

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-ne p1, v1, :cond_4

    :goto_1
    move v0, v2

    :cond_4
    return v0
.end method

.method public b(Landroid/support/v7/widget/av;Landroid/view/MotionEvent;)V
    .locals 4

    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/ak;->a(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ak;->b(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    iput v0, p0, Landroid/support/v7/widget/ak;->y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/ak;->f:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iput v1, p0, Landroid/support/v7/widget/ak;->y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/ak;->c:F

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ak;->b(I)V

    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/ak;->c:F

    iput p1, p0, Landroid/support/v7/widget/ak;->f:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ak;->b(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/ak;->y:I

    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget p1, p0, Landroid/support/v7/widget/ak;->x:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->a()V

    iget p1, p0, Landroid/support/v7/widget/ak;->y:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->b(F)V

    :cond_6
    iget p1, p0, Landroid/support/v7/widget/ak;->y:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->a(F)V

    :cond_7
    return-void
.end method

.method b(FF)Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ak;->t:I

    iget v1, p0, Landroid/support/v7/widget/ak;->q:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroid/support/v7/widget/ak;->e:I

    iget v0, p0, Landroid/support/v7/widget/ak;->d:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p2, p0, Landroid/support/v7/widget/ak;->e:I

    iget v0, p0, Landroid/support/v7/widget/ak;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
