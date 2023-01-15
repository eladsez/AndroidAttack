.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$b;,
        Landroid/support/design/widget/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field b:Landroid/support/v4/widget/q;

.field c:Landroid/support/design/widget/SwipeDismissBehavior$a;

.field d:I

.field e:F

.field f:F

.field g:F

.field private h:F

.field private i:Z

.field private final j:Landroid/support/v4/widget/q$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/q$a;

    return-void
.end method

.method static a(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static a(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/v4/widget/q;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/q$a;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/q;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/q$a;)Landroid/support/v4/widget/q;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/q$a;

    invoke-static {p1, v0}, Landroid/support/v4/widget/q;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/q$a;)Landroid/support/v4/widget/q;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/v4/widget/q;

    :cond_1
    return-void
.end method

.method static b(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    return-void
.end method

.method public a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Landroid/support/design/widget/SwipeDismissBehavior$a;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Z

    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Z

    goto :goto_0

    :cond_0
    :pswitch_1
    iput-boolean v3, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/v4/widget/q;

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/q;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/v4/widget/q;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/v4/widget/q;

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/q;->b(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
