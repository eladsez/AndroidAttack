.class public Landroid/support/v7/widget/aw;
.super Landroid/support/v4/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/aw$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/av;

.field final c:Landroid/support/v4/h/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/av;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/h/b;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/av;

    new-instance p1, Landroid/support/v7/widget/aw$a;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/aw$a;-><init>(Landroid/support/v7/widget/aw;)V

    iput-object p1, p0, Landroid/support/v7/widget/aw;->c:Landroid/support/v4/h/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/h/a/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/support/v4/h/a/b;)V

    const-class p1, Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/av$i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/av$i;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v4/h/a/b;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/v7/widget/av;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/av$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/av$i;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/av$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/h/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/av$i;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/av;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/av$i;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/av$i;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->v()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/support/v4/h/b;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aw;->c:Landroid/support/v4/h/b;

    return-object v0
.end method
