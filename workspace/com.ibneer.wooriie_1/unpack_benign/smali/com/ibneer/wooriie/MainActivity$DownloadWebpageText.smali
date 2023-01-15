.class Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibneer/wooriie/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadWebpageText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/MainActivity;


# direct methods
.method private constructor <init>(Lcom/ibneer/wooriie/MainActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibneer/wooriie/MainActivity;Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;-><init>(Lcom/ibneer/wooriie/MainActivity;)V

    return-void
.end method

.method private downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "strUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 247
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mobile/login_check.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "tmp_url":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 250
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 251
    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 252
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 253
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 254
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 255
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 257
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    new-instance v4, Ljava/lang/String;

    const-string v5, "OK"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 260
    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "NO"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 263
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "tmp_url":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v4

    .line 264
    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 267
    :cond_2
    throw v4
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 225
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "\uc811\uc18d \uc2e4\ud328"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, "NO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-virtual {v0}, Lcom/ibneer/wooriie/MainActivity;->whatthe()V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-virtual {v0}, Lcom/ibneer/wooriie/MainActivity;->loadpage()V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity$DownloadWebpageText;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-virtual {v0}, Lcom/ibneer/wooriie/MainActivity;->whatthe()V

    goto :goto_0
.end method
