.class Landroid/support/v7/internal/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/i;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->collapseActionView()Z

    :cond_0
    return-void
.end method
