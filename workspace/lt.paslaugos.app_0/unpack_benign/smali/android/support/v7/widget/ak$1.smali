.class Landroid/support/v7/widget/ak$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    iget-boolean v0, v0, Landroid/support/v7/widget/ak;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    iget-boolean v0, v0, Landroid/support/v7/widget/ak;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->requestLayout()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    iget-boolean v0, v0, Landroid/support/v7/widget/ak;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->t:Z

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ak$1;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->d()V

    :cond_3
    :goto_0
    return-void
.end method
