.class Landroid/support/v7/widget/ak$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/be$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ak;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ak;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ak$x;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    iget-object p1, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/ak$p;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/ak$i;->a(Landroid/view/View;Landroid/support/v7/widget/ak$p;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/ak$p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak$p;->c(Landroid/support/v7/widget/ak$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ak;->b(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ak$x;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    iget-boolean v0, v0, Landroid/support/v7/widget/ak;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->y:Landroid/support/v7/widget/ak$f;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/ak$f;->a(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->p()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$4;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->y:Landroid/support/v7/widget/ak$f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ak$f;->c(Landroid/support/v7/widget/ak$x;Landroid/support/v7/widget/ak$f$c;Landroid/support/v7/widget/ak$f$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
