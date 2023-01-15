.class Landroid/support/v7/internal/view/menu/e;
.super Landroid/widget/ImageButton;

# interfaces
.implements Landroid/support/v7/internal/view/menu/i;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/b/b;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a()Z

    goto :goto_0
.end method
