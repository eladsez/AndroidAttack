.class Landroid/support/v7/internal/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/u;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/n;

.field b:Landroid/support/v7/internal/view/menu/r;

.field final synthetic c:Landroid/support/v7/internal/widget/ActionBarView;


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->d(Landroid/support/v7/internal/view/menu/r;)Z

    :cond_0
    iput-object p2, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/r;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aj;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aj;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/aj;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p2, v4}, Landroid/support/v7/internal/view/menu/r;->e(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/c/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    check-cast v0, Landroid/support/v7/c/a;

    invoke-interface {v0}, Landroid/support/v7/c/a;->a()V

    :cond_6
    return v4
.end method

.method public a(Landroid/support/v7/internal/view/menu/y;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/a/b;

    iget-object v4, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/i;->b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    check-cast v0, Landroid/support/v7/c/a;

    invoke-interface {v0}, Landroid/support/v7/c/a;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->g:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->l(Landroid/support/v7/internal/widget/ActionBarView;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->m(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aj;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->m(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aj;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/aj;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p2, v2}, Landroid/support/v7/internal/view/menu/r;->e(Z)V

    return v4

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
