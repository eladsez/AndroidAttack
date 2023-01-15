.class Landroid/support/v4/e/d$a;
.super Landroid/support/v4/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/e/d;


# direct methods
.method constructor <init>(Landroid/support/v4/e/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/d$a;->a:Landroid/support/v4/e/d;

    invoke-direct {p0}, Landroid/support/v4/e/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e/d$a;->a:Landroid/support/v4/e/d;

    iget-object v0, v0, Landroid/support/v4/e/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/d$a;->a:Landroid/support/v4/e/d;

    iget-object v0, v0, Landroid/support/v4/e/d;->b:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/e/d$b;

    iget-object v2, p0, Landroid/support/v4/e/d$a;->a:Landroid/support/v4/e/d;

    invoke-direct {v1, v2, p1, p2}, Landroid/support/v4/e/d$b;-><init>(Landroid/support/v4/e/d;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e/d$a;->a:Landroid/support/v4/e/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/e/d;->a(ILandroid/os/Bundle;)V

    return-void
.end method
