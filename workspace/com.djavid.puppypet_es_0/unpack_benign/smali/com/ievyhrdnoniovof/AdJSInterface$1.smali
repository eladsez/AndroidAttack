.class Lcom/ievyhrdnoniovof/AdJSInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdJSInterface;->processHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic M:Lcom/ievyhrdnoniovof/AdJSInterface;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdJSInterface;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "2\'S\u0000\u001c6\u001d7S~S"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->k:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->k:Ljava/lang/String;

    const-string v2, "\u000b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ievyhrdnoniovof/AdController;->setAdDestroyed(Z)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->A(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "LBAdController"

    const-string v2, ",\u001d\u0002\u0017\u0005\u0012*\u001f&\u0017c\u00071\u001a$\u0014&\u0001&\u0017"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->A(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ievyhrdnoniovof/AdListener;->onAdFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdJSInterface$1;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdJSInterface$1;
    :goto_0
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->getAdDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->l:Ljava/lang/String;

    const-string v2, "7\u00016\u0016"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LBAdController"

    const-string v2, "|\nR\u000b\\EO\n\u001b\u0016S\nLEs1v)\u001b\u0004_\u0016\u001a"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController;->setHTMLAds(Z)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController;->setHTML(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->getOnAdLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController;->setOnAdLoaded(Z)V

    :cond_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdJSInterface$1;->M:Lcom/ievyhrdnoniovof/AdJSInterface;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdController;->setAdLoaded(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    return-void

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdJSInterface$1;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdJSInterface$1;
    :catch_0
    move-exception v1

    const-string v1, "LBAdController"

    const-string v2, " I\u0017T\u0017\u001b\u0012S\u000cW\u0000\u001b\u0006Z\tW\u000cU\u0002\u001b\nU$_#Z\u000cW\u0000_"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdJSInterface$1;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdJSInterface$1;
    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "LBAdController"

    const-string v3, "\u0006\u00011\u001c1S4\u001b*\u001f&S \u0012/\u001f*\u001d$S,\u001d\u0002\u0017\u000f\u001c\"\u0017&\u0017"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method
