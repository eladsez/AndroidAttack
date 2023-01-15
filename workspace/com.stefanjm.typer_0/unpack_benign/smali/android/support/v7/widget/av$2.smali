.class Landroid/support/v7/widget/av$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/av;
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

    iput-object p1, p0, Landroid/support/v7/widget/av$2;->a:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/av$2;->a:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->y:Landroid/support/v7/widget/av$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$2;->a:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->y:Landroid/support/v7/widget/av$f;

    invoke-virtual {v0}, Landroid/support/v7/widget/av$f;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/av$2;->a:Landroid/support/v7/widget/av;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/av;->F:Z

    return-void
.end method
