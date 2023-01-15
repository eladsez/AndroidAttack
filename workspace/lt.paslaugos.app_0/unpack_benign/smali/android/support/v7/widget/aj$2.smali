.class final Landroid/support/v7/widget/aj$2;
.super Landroid/support/v7/widget/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/aj;->b(Landroid/support/v7/widget/ak$i;)Landroid/support/v7/widget/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ak$i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/aj;-><init>(Landroid/support/v7/widget/ak$i;Landroid/support/v7/widget/aj$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ak$j;

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ak$i;->i(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/ak$j;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak$i;->j(I)V

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ak$j;

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ak$i;->k(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/ak$j;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->B()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/ak$i;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v7/widget/aj$2;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->z()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$i;->D()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/ak$i;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v7/widget/aj$2;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->z()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ak$j;

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ak$i;->g(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/support/v7/widget/ak$j;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/support/v7/widget/ak$j;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->z()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$i;->B()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak$i;->D()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ak$j;

    iget-object v1, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ak$i;->f(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/support/v7/widget/ak$j;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/support/v7/widget/ak$j;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->D()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->x()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aj$2;->a:Landroid/support/v7/widget/ak$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$i;->w()I

    move-result v0

    return v0
.end method
