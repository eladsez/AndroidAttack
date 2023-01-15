.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/SwipeDismissBehavior;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/q$a;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_7

    invoke-static {p1}, Landroid/support/v4/h/q;->e(Landroid/view/View;)I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    if-nez v4, :cond_4

    if-eqz p1, :cond_2

    cmpg-float p1, p2, v0

    if-gez p1, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v1

    :cond_4
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    if-ne v4, v2, :cond_6

    if-eqz p1, :cond_5

    if-lez v3, :cond_6

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    cmpg-float p1, p2, v0

    if-gez p1, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    return v1

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Landroid/support/design/widget/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 2

    const/4 p3, -0x1

    iput p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->a(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    if-ge p2, v0, :cond_0

    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    add-int/2addr p2, p3

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    const/4 p3, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/v4/widget/q;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/widget/q;->a(II)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/support/design/widget/SwipeDismissBehavior$b;

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p2, v0, p1, p3}, Landroid/support/design/widget/SwipeDismissBehavior$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p2}, Landroid/support/v4/h/q;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->c:Landroid/support/design/widget/SwipeDismissBehavior$a;

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->c:Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-interface {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 2

    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p5, p5, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    mul-float p4, p4, p5

    add-float/2addr p3, p4

    iget p4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    mul-float p5, p5, v0

    add-float/2addr p4, p5

    int-to-float p2, p2

    const/high16 p5, 0x3f800000    # 1.0f

    cmpg-float v0, p2, p3

    if-gtz v0, :cond_0

    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p2, p4

    if-ltz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-static {p3, p4, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(FFF)F

    move-result p2

    sub-float p2, p5, p2

    invoke-static {v0, p2, p5}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;II)I
    .locals 2

    invoke-static {p1}, Landroid/support/v4/h/q;->e(Landroid/view/View;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    :cond_1
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    iget p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    goto :goto_3

    :cond_2
    :goto_1
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    :goto_2
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->d:I

    if-ne v1, v0, :cond_4

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_4
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    goto :goto_2

    :goto_3
    invoke-static {p3, p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(III)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
