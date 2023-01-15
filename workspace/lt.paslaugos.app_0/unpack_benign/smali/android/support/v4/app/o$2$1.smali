.class Landroid/support/v4/app/o$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/o$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/o$2;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o$2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/o$2$1;->a:Landroid/support/v4/app/o$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/app/o$2$1;->a:Landroid/support/v4/app/o$2;

    iget-object v0, v0, Landroid/support/v4/app/o$2;->b:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->U()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o$2$1;->a:Landroid/support/v4/app/o$2;

    iget-object v0, v0, Landroid/support/v4/app/o$2;->b:Landroid/support/v4/app/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/o$2$1;->a:Landroid/support/v4/app/o$2;

    iget-object v1, v0, Landroid/support/v4/app/o$2;->c:Landroid/support/v4/app/o;

    iget-object v0, p0, Landroid/support/v4/app/o$2$1;->a:Landroid/support/v4/app/o$2;

    iget-object v2, v0, Landroid/support/v4/app/o$2;->b:Landroid/support/v4/app/i;

    iget-object v0, p0, Landroid/support/v4/app/o$2$1;->a:Landroid/support/v4/app/o$2;

    iget-object v0, v0, Landroid/support/v4/app/o$2;->b:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->W()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;IIIZ)V

    :cond_0
    return-void
.end method
