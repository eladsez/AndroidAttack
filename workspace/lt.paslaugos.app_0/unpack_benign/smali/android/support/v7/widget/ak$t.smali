.class public abstract Landroid/support/v7/widget/ak$t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ak$t$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/ak;

.field private c:Landroid/support/v7/widget/ak$i;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/ak$t$a;


# direct methods
.method private a(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ak$t;->b:Landroid/support/v7/widget/ak;

    iget-boolean v1, p0, Landroid/support/v7/widget/ak$t;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/ak$t;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ak$t;->a()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/ak$t;->d:Z

    iget-object v1, p0, Landroid/support/v7/widget/ak$t;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/ak$t;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ak$t;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/ak$t;->a:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ak$t;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    iget-object v3, p0, Landroid/support/v7/widget/ak$t;->g:Landroid/support/v7/widget/ak$t$a;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/ak$t;->a(Landroid/view/View;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$t$a;)V

    iget-object v1, p0, Landroid/support/v7/widget/ak$t;->g:Landroid/support/v7/widget/ak$t$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ak$t$a;->a(Landroid/support/v7/widget/ak;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$t;->a()V

    goto :goto_0

    :cond_2
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/ak$t;->f:Landroid/view/View;

    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/ak$t;->e:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    iget-object v2, p0, Landroid/support/v7/widget/ak$t;->g:Landroid/support/v7/widget/ak$t$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/ak$t;->a(IILandroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$t$a;)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$t;->g:Landroid/support/v7/widget/ak$t$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$t$a;->a()Z

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/ak$t;->g:Landroid/support/v7/widget/ak$t$a;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ak$t$a;->a(Landroid/support/v7/widget/ak;)V

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroid/support/v7/widget/ak$t;->e:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ak$t;->d:Z

    iget-object p1, v0, Landroid/support/v7/widget/ak;->z:Landroid/support/v7/widget/ak$w;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak$w;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ak$t;->a()V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ak$t;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ak$t;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$t;->b:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak;->f(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected final a()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/ak$t;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ak$t;->e:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$t;->e()V

    iget-object v1, p0, Landroid/support/v7/widget/ak$t;->b:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/ak$u;->a(Landroid/support/v7/widget/ak$u;I)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/ak$t;->f:Landroid/view/View;

    iput v2, p0, Landroid/support/v7/widget/ak$t;->a:I

    iput-boolean v0, p0, Landroid/support/v7/widget/ak$t;->d:Z

    iget-object v0, p0, Landroid/support/v7/widget/ak$t;->c:Landroid/support/v7/widget/ak$i;

    invoke-static {v0, p0}, Landroid/support/v7/widget/ak$i;->a(Landroid/support/v7/widget/ak$i;Landroid/support/v7/widget/ak$t;)V

    iput-object v1, p0, Landroid/support/v7/widget/ak$t;->c:Landroid/support/v7/widget/ak$i;

    iput-object v1, p0, Landroid/support/v7/widget/ak$t;->b:Landroid/support/v7/widget/ak;

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ak$t;->a:I

    return-void
.end method

.method protected abstract a(IILandroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$t$a;)V
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/ak$u;Landroid/support/v7/widget/ak$t$a;)V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$t;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ak$t;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/ak$t;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ak$t;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ak$t;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ak$t;->a:I

    return v0
.end method

.method protected abstract e()V
.end method
