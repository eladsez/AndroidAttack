.class Landroid/support/transition/y$a;
.super Landroid/support/transition/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/transition/y;


# direct methods
.method constructor <init>(Landroid/support/transition/y;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/v;-><init>()V

    iput-object p1, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/u;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    invoke-static {v0}, Landroid/support/transition/y;->b(Landroid/support/transition/y;)I

    iget-object v0, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    invoke-static {v0}, Landroid/support/transition/y;->c(Landroid/support/transition/y;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/y;->a(Landroid/support/transition/y;Z)Z

    iget-object v0, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    invoke-virtual {v0}, Landroid/support/transition/y;->k()V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/u;->b(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    return-void
.end method

.method public d(Landroid/support/transition/u;)V
    .locals 1

    iget-object p1, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    invoke-static {p1}, Landroid/support/transition/y;->a(Landroid/support/transition/y;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    invoke-virtual {p1}, Landroid/support/transition/y;->j()V

    iget-object p1, p0, Landroid/support/transition/y$a;->a:Landroid/support/transition/y;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/transition/y;->a(Landroid/support/transition/y;Z)Z

    :cond_0
    return-void
.end method
