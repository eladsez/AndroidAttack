.class public abstract Landroid/support/design/widget/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/b$b;,
        Landroid/support/design/widget/b$f;,
        Landroid/support/design/widget/b$d;,
        Landroid/support/design/widget/b$e;,
        Landroid/support/design/widget/b$c;,
        Landroid/support/design/widget/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/b<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final d:Z


# instance fields
.field final b:Landroid/support/design/widget/b$f;

.field final c:Landroid/support/design/widget/j$a;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/support/design/widget/b$c;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/b$a<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final j:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/b;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/b$1;

    invoke-direct {v2}, Landroid/support/design/widget/b$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/b;->a:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/b$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/design/widget/b$6;

    invoke-direct {v0, p0}, Landroid/support/design/widget/b$6;-><init>(Landroid/support/design/widget/b;)V

    iput-object v0, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/b;->e:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/design/widget/b;->g:Landroid/support/design/widget/b$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/b;->f:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/design/widget/b;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/design/widget/l;->a(Landroid/content/Context;)V

    iget-object p1, p0, Landroid/support/design/widget/b;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Landroid/support/design/a$g;->design_layout_snackbar:I

    iget-object v0, p0, Landroid/support/design/widget/b;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/b$f;

    iput-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/b$f;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v4/h/q;->b(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {p1, p2}, Landroid/support/v4/h/q;->a(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {p1, p2}, Landroid/support/v4/h/q;->b(Landroid/view/View;Z)V

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    new-instance p2, Landroid/support/design/widget/b$5;

    invoke-direct {p2, p0}, Landroid/support/design/widget/b$5;-><init>(Landroid/support/design/widget/b;)V

    invoke-static {p1, p2}, Landroid/support/v4/h/q;->a(Landroid/view/View;Landroid/support/v4/h/o;)V

    iget-object p1, p0, Landroid/support/design/widget/b;->f:Landroid/content/Context;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Landroid/support/design/widget/b;->j:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/support/design/widget/b;)Landroid/support/design/widget/b$c;
    .locals 0

    iget-object p0, p0, Landroid/support/design/widget/b;->g:Landroid/support/design/widget/b$c;

    return-object p0
.end method

.method private e(I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v5}, Landroid/support/design/widget/b$f;->getHeight()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/b$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/b$2;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/support/design/widget/b$3;

    invoke-direct {p1, p0}, Landroid/support/design/widget/b$3;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/a$a;->design_snackbar_out:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/support/design/widget/b$4;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/b$4;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/b$f;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Landroid/support/design/widget/b;->d:Z

    return v0
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Landroid/support/design/widget/b;->h:I

    return-object p0
.end method

.method public a()V
    .locals 3

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/b;->h:I

    iget-object v2, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/j;->a(ILandroid/support/design/widget/j$a;)V

    return-void
.end method

.method b(I)V
    .locals 2

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$a;I)V

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->e(Landroid/support/design/widget/j$a;)Z

    move-result v0

    return v0
.end method

.method final c()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    new-instance v1, Landroid/support/design/widget/b$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$b;-><init>(Landroid/support/design/widget/b;)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->a(F)V

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->b(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->a(I)V

    new-instance v2, Landroid/support/design/widget/b$7;

    invoke-direct {v2, p0}, Landroid/support/design/widget/b$7;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/b;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    new-instance v1, Landroid/support/design/widget/b$8;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$8;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$f;->setOnAttachStateChangeListener(Landroid/support/design/widget/b$d;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {v0}, Landroid/support/v4/h/q;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/b;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/b;->e()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    new-instance v1, Landroid/support/design/widget/b$9;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$9;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$f;->setOnLayoutChangeListener(Landroid/support/design/widget/b$e;)V

    :goto_0
    return-void
.end method

.method final c(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/b;->e(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/b;->d(I)V

    :goto_0
    return-void
.end method

.method d()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getHeight()I

    move-result v0

    sget-boolean v3, Landroid/support/design/widget/b;->d:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {v3, v0}, Landroid/support/v4/h/q;->c(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/b$f;->setTranslationY(F)V

    :goto_0
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v4, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/b$10;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$10;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/support/design/widget/b$11;

    invoke-direct {v1, p0, v0}, Landroid/support/design/widget/b$11;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/a$a;->design_snackbar_in:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/support/design/widget/b$12;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$12;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b$f;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method d(I)V
    .locals 2

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$a;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/b;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/b$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/design/widget/b$a;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/design/widget/b$f;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {p1}, Landroid/support/design/widget/b$f;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method e()V
    .locals 2

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/j$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->b(Landroid/support/design/widget/j$a;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/b;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/b$a;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/b$a;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/b;->j:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
