.class Lcom/ievyhrdnoniovof/AdController$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gq~|\u007fost\u007fku}v~u{d"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Ljava/lang/String;Z)Landroid/view/animation/Animation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Lcom/ievyhrdnoniovof/AdController$13$1;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdController$13$1;-><init>(Lcom/ievyhrdnoniovof/AdController$13;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->E(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->E(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->E(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$13;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, v1, Lcom/ievyhrdnoniovof/AdController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/view/View;)V

    goto :goto_1
.end method
