.class Landroid/support/v4/e/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field final synthetic c:Landroid/support/v4/e/d;


# direct methods
.method constructor <init>(Landroid/support/v4/e/d;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/d$b;->c:Landroid/support/v4/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v4/e/d$b;->a:I

    iput-object p3, p0, Landroid/support/v4/e/d$b;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e/d$b;->c:Landroid/support/v4/e/d;

    iget v1, p0, Landroid/support/v4/e/d$b;->a:I

    iget-object v2, p0, Landroid/support/v4/e/d$b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/e/d;->a(ILandroid/os/Bundle;)V

    return-void
.end method
