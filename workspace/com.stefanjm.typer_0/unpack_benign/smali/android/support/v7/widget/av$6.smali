.class Landroid/support/v7/widget/av$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/av;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/av$x;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/av;->a(IZ)Landroid/support/v7/widget/av$x;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget-object v1, v1, Landroid/support/v7/widget/av;->f:Landroid/support/v7/widget/ae;

    iget-object v2, p1, Landroid/support/v7/widget/av$x;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ae;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/av;->a(IIZ)V

    iget-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iput-boolean v1, p1, Landroid/support/v7/widget/av;->D:Z

    iget-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget-object p1, p1, Landroid/support/v7/widget/av;->C:Landroid/support/v7/widget/av$u;

    iget v0, p1, Landroid/support/v7/widget/av$u;->b:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/support/v7/widget/av$u;->b:I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/av;->a(IILjava/lang/Object;)V

    iget-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/av;->E:Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av$6;->c(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/av;->a(IIZ)V

    iget-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/av;->D:Z

    return-void
.end method

.method public b(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av$6;->c(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/av;->g(II)V

    iget-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/av;->D:Z

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

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->m:Landroid/support/v7/widget/av$i;

    iget-object v1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/f$b;->d:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/av$i;->b(Landroid/support/v7/widget/av;II)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->m:Landroid/support/v7/widget/av$i;

    iget-object v1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/f$b;->d:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v7/widget/av;II)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->m:Landroid/support/v7/widget/av$i;

    iget-object v1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/f$b;->d:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v7/widget/av;III)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->m:Landroid/support/v7/widget/av$i;

    iget-object v1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    iget v2, p1, Landroid/support/v7/widget/f$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/f$b;->d:I

    iget-object p1, p1, Landroid/support/v7/widget/f$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/v7/widget/av$i;->a(Landroid/support/v7/widget/av;IILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/av;->f(II)V

    iget-object p1, p0, Landroid/support/v7/widget/av$6;->a:Landroid/support/v7/widget/av;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/av;->D:Z

    return-void
.end method
