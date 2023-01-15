.class public Lcom/ievyhrdnoniovof/AdTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic E:Ljava/lang/String;

.field private synthetic H:Landroid/content/Context;

.field private synthetic M:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic d:Ljava/lang/String;

.field private synthetic k:Lorg/json/JSONObject;

.field private synthetic l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    const-string v0, "LBAdController"

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdTask;->H:Landroid/content/Context;

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdTask;->M:Lcom/ievyhrdnoniovof/AdController;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdTask;->E:Ljava/lang/String;

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "B}amukd8Da`}050"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdTask;->l([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs l([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->H:Landroid/content/Context;

    const-string v1, "{\u007fv~}slynyli"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ievyhrdnoniovof/AdRequest;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdTask;->H:Landroid/content/Context;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdTask;->E:Ljava/lang/String;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ievyhrdnoniovof/AdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdRequest;->setSubId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdTask;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdRequest;->setTokens(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdRequest;->makeLBRequest()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->k:Lorg/json/JSONObject;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected l(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->M:Lcom/ievyhrdnoniovof/AdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->M:Lcom/ievyhrdnoniovof/AdController;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdTask;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->setResults(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    const-string v1, "\u00086"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    const-string v1, "q|s"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    const-string v1, "3\u001c6\u0000="

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    const-string v1, "ye|yws"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->M:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->adInitialized()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    const-string v1, "reengagement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->m:Ljava/lang/String;

    const-string v1, "\u001b7\u000c<\u000e3\u000e7\u00047\u0007&63\u00053\u001b?"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdTask;->M:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->reEngagementInitialized()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const-string v0, "LBAdController"

    const-string v1, "(6=3\u001a9I1\u0008<\n7\u0005>\u000c6"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdTask;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdTask;->d:Ljava/lang/String;

    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .locals 0
    .param p1, "arg0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdTask;->l:Ljava/util/List;

    return-void
.end method
