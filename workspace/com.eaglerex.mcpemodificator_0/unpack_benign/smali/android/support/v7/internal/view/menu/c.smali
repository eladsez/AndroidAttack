.class Landroid/support/v7/internal/view/menu/c;
.super Landroid/support/v7/internal/view/menu/q;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/y;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/c;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/support/v7/internal/view/menu/n;)V

    iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/v;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/q;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/c;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/c;)Landroid/support/v7/internal/view/menu/c;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/c;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I

    return-void
.end method
