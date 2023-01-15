.class Landroid/support/v7/widget/av$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/av$f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/av$g;->a:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/av$x;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/av$x;->a(Z)V

    iget-object v0, p1, Landroid/support/v7/widget/av$x;->h:Landroid/support/v7/widget/av$x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/av$x;->i:Landroid/support/v7/widget/av$x;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroid/support/v7/widget/av$x;->h:Landroid/support/v7/widget/av$x;

    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/av$x;->i:Landroid/support/v7/widget/av$x;

    invoke-static {p1}, Landroid/support/v7/widget/av$x;->c(Landroid/support/v7/widget/av$x;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/av$g;->a:Landroid/support/v7/widget/av;

    iget-object v1, p1, Landroid/support/v7/widget/av$x;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/av$x;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/av$g;->a:Landroid/support/v7/widget/av;

    iget-object p1, p1, Landroid/support/v7/widget/av$x;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/av;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
