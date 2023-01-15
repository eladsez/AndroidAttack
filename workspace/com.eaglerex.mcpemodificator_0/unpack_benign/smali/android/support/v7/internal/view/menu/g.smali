.class Landroid/support/v7/internal/view/menu/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .locals 2

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/internal/view/menu/y;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/y;->o()Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Landroid/support/v7/internal/view/menu/y;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/y;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I

    goto :goto_0
.end method
