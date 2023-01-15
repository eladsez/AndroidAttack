.class public Landroid/support/v7/internal/view/menu/y;
.super Landroid/support/v7/internal/view/menu/n;

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private d:Landroid/support/v7/internal/view/menu/n;

.field private e:Landroid/support/v7/internal/view/menu/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    iput-object p3, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/view/menu/r;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->b()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/internal/view/menu/r;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->c(Landroid/support/v7/internal/view/menu/r;)Z

    move-result v0

    return v0
.end method

.method public clearHeader()V
    .locals 0

    return-void
.end method

.method public d(Landroid/support/v7/internal/view/menu/r;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->d(Landroid/support/v7/internal/view/menu/r;)Z

    move-result v0

    return v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/view/menu/r;

    return-object v0
.end method

.method public o()Landroid/support/v7/internal/view/menu/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method public r()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/n;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/n;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/n;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/n;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/View;)Landroid/support/v7/internal/view/menu/n;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/r;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/r;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->setQwertyMode(Z)V

    return-void
.end method
