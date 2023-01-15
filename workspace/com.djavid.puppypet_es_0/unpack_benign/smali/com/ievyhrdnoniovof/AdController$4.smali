.class Lcom/ievyhrdnoniovof/AdController$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->loadAd()V
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
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->y(Lcom/ievyhrdnoniovof/AdController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->M(Lcom/ievyhrdnoniovof/AdController;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LBAdController"

    const-string v1, "H?f5w#H6U4T\"\u0007%U8@6B#B5"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->u(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdProgress()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->s(Lcom/ievyhrdnoniovof/AdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->P(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$4;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->I(Lcom/ievyhrdnoniovof/AdController;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    const-string v2, "7\u001b \u0006 I%\u00017\u0007r\u0006<(69 \u00065\u001b7\u001a!I&\u001b;\u000e5\u000c \u000c6"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
