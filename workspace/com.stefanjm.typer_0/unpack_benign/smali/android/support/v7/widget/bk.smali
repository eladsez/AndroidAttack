.class public Landroid/support/v7/widget/bk;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v7/widget/bl;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
