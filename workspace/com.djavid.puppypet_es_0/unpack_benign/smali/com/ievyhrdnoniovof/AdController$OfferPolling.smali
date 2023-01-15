.class Lcom/ievyhrdnoniovof/AdController$OfferPolling;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferPolling"
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$OfferPolling;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$OfferPolling;->k:Lcom/ievyhrdnoniovof/AdController;

    new-instance v1, Lcom/ievyhrdnoniovof/AdController$Polling;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$OfferPolling;->k:Lcom/ievyhrdnoniovof/AdController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ievyhrdnoniovof/AdController$Polling;-><init>(Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdController$1;)V

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->l(Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdController$Polling;)Lcom/ievyhrdnoniovof/AdController$Polling;

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$OfferPolling;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->D(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdController$Polling;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$OfferPolling;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->c(Lcom/ievyhrdnoniovof/AdController;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "\u001a\t\u0006\n\u001f\u0014\u0006"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdController$OfferPolling;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdController;->z(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdController$Polling;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
