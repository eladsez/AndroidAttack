.class Lcom/ievyhrdnoniovof/AdController$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->loadAudioAd()V
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
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->b(Lcom/ievyhrdnoniovof/AdController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->M(Lcom/ievyhrdnoniovof/AdController;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LBAdController"

    const-string v1, ",\u001d\u0002\u0017\u0013\u0001,\u00141\u00160\u0000c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->F(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdAudioListener;->onAdProgress()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->s(Lcom/ievyhrdnoniovof/AdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->P(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$15;->k:Lcom/ievyhrdnoniovof/AdController;

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

    const-string v2, "\u00161\u0001,\u0001c\u0004+\u0016-S,\u001d\u0002\u0017\u0013\u0001,\u00141\u00160\u0000c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
