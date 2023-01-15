.class Landroid/support/v7/widget/ak$2;
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

    iput-object p1, p0, Landroid/support/v7/widget/ak$2;->a:Landroid/support/v7/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$2;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->y:Landroid/support/v7/widget/ak$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ak$2;->a:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->y:Landroid/support/v7/widget/ak$f;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak$f;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak$2;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->F:Z

    return-void
.end method
