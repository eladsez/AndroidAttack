.class Landroid/support/v7/widget/p$1;
.super Landroid/support/v7/widget/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/p$b;

.field final synthetic b:Landroid/support/v7/widget/p;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/p;Landroid/view/View;Landroid/support/v7/widget/p$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/p$1;->b:Landroid/support/v7/widget/p;

    iput-object p3, p0, Landroid/support/v7/widget/p$1;->a:Landroid/support/v7/widget/p$b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p$1;->a:Landroid/support/v7/widget/p$b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p$1;->b:Landroid/support/v7/widget/p;

    invoke-static {v0}, Landroid/support/v7/widget/p;->a(Landroid/support/v7/widget/p;)Landroid/support/v7/widget/p$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/p$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p$1;->b:Landroid/support/v7/widget/p;

    invoke-static {v0}, Landroid/support/v7/widget/p;->a(Landroid/support/v7/widget/p;)Landroid/support/v7/widget/p$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/p$b;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
