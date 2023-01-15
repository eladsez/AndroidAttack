.class Lcom/ievyhrdnoniovof/AdController$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->L()V
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
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, v1, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v2, ""

    const-string v3, "[x}ssyvw6>6>H|}qku8Gyyl1"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->m(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {v1, v2}, Lcom/ievyhrdnoniovof/AdController$OfferPolling;-><init>(Lcom/ievyhrdnoniovof/AdController;)V

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdController$OfferPolling;)Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->L(Lcom/ievyhrdnoniovof/AdController;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_1
    :try_start_0
    const-string v0, "LBAdController"

    const-string v1, "(Z\u000bN\u0004W\tBEk\nW\tR\u000b\\"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->L(Lcom/ievyhrdnoniovof/AdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdController$12;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->m(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdController$OfferPolling;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "]bj\u007fj0q~8}y~mqt0h\u007ft|q~\u007f050"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
