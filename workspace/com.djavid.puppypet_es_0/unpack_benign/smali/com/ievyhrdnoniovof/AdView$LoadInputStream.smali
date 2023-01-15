.class Lcom/ievyhrdnoniovof/AdView$LoadInputStream;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadInputStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic M:Lcom/ievyhrdnoniovof/AdView;

.field private synthetic k:Ljava/lang/String;

.field private synthetic l:Ljava/lang/String;

.field private synthetic m:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Ljava/io/InputStream;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->M:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->l([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs l([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->M:Lcom/ievyhrdnoniovof/AdView;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->M:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->A(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    const-string v2, "_ormma_current"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->k:Ljava/lang/String;

    invoke-static {}, Lcom/ievyhrdnoniovof/AdView;->I()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ievyhrdnoniovof/AdView;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ievyhrdnoniovof/AdUtilityController;->writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ievyhrdnoniovof/AdView;->A(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "vq|}*7?"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->M:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdView;->m(Lcom/ievyhrdnoniovof/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ormma_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    iput-object v8, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    :goto_1
    return-object v8

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\n\u001f/\u0016$\u0012/ 7\u00127\u0016\u0006\u000b \u00163\u0007*\u001c-SnS"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdView"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    iput-object v8, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "Q_]h{uhdq\u007fv050"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdView"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    iput-object v8, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    :try_start_6
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    iput-object v8, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->m:Ljava/io/InputStream;

    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method protected l(Ljava/lang/Void;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "tydyDwYvz}sl050"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->M:Lcom/ievyhrdnoniovof/AdView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->M:Lcom/ievyhrdnoniovof/AdView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u001f/\u0016$\u0012/ 7\u00127\u0016\u0006\u000b \u00163\u0007*\u001c-SnS"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LBAdView"

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdView$LoadInputStream;->l(Ljava/lang/Void;)V

    return-void
.end method
