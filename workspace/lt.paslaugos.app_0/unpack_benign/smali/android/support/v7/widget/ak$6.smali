.class Landroid/support/v7/widget/ak$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ak;->b()V
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

    iput-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/ak$x;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/ak;->a(IZ)Landroid/support/v7/widget/ak$x;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/u;

    iget-object v2, p1, Landroid/support/v7/widget/ak$x;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/u;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/ak;->a(IIZ)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iput-boolean v1, p1, Landroid/support/v7/widget/ak;->D:Z

    iget-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget-object p1, p1, Landroid/support/v7/widget/ak;->C:Landroid/support/v7/widget/ak$u;

    iget v0, p1, Landroid/support/v7/widget/ak$u;->b:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/support/v7/widget/ak$u;->b:I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ak;->a(IILjava/lang/Object;)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/ak;->E:Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$6;->c(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/ak;->a(IIZ)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/ak;->D:Z

    return-void
.end method

.method public b(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak$6;->c(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ak;->g(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/ak;->D:Z

    return-void
.end method

.method c(Landroid/support/v7/widget/f$b;)V
    .locals 4

    iget v0, p1, Landroid/support/v7/widget/f$b;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    iget-object v1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/f$b;->d:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/ak$i;->b(Landroid/support/v7/widget/ak;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    iget-object v1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/f$b;->d:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/ak$i;->a(Landroid/support/v7/widget/ak;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    iget-object v1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/f$b;->d:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/support/v7/widget/ak$i;->a(Landroid/support/v7/widget/ak;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->m:Landroid/support/v7/widget/ak$i;

    iget-object v1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/f$b;->d:I

    iget-object p1, p1, Landroid/support/v7/widget/f$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/v7/widget/ak$i;->a(Landroid/support/v7/widget/ak;IILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ak;->f(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ak$6;->a:Landroid/support/v7/widget/ak;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/ak;->D:Z

    return-void
.end method
