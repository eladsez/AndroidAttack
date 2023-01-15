.class Lcom/ievyhrdnoniovof/AdController$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController$13;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController$13;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController$13;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$13$1;->k:Lcom/ievyhrdnoniovof/AdController$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13$1;->k:Lcom/ievyhrdnoniovof/AdController$13;

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->E(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13$1;->k:Lcom/ievyhrdnoniovof/AdController$13;

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$13$1;->k:Lcom/ievyhrdnoniovof/AdController$13;

    iget-object v1, v1, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->E(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13$1;->k:Lcom/ievyhrdnoniovof/AdController$13;

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$13$1;->k:Lcom/ievyhrdnoniovof/AdController$13;

    iget-object v1, v1, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, v1, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
