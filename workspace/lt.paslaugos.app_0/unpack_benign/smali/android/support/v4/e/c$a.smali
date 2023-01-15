.class Landroid/support/v4/e/c$a;
.super Landroid/support/v4/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/e/c;


# direct methods
.method constructor <init>(Landroid/support/v4/e/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/c$a;->a:Landroid/support/v4/e/c;

    invoke-direct {p0}, Landroid/support/v4/e/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e/c$a;->a:Landroid/support/v4/e/c;

    iget-object v0, v0, Landroid/support/v4/e/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/c$a;->a:Landroid/support/v4/e/c;

    iget-object v0, v0, Landroid/support/v4/e/c;->b:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/e/c$b;

    iget-object v2, p0, Landroid/support/v4/e/c$a;->a:Landroid/support/v4/e/c;

    invoke-direct {v1, v2, p1, p2}, Landroid/support/v4/e/c$b;-><init>(Landroid/support/v4/e/c;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e/c$a;->a:Landroid/support/v4/e/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/e/c;->a(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
