.class public Lcom/ibneer/wooriie/GCMHttpConnect;
.super Ljava/lang/Thread;
.source "GCMHttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibneer/wooriie/GCMHttpConnect$Request;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTP"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibneer/wooriie/GCMHttpConnect$Request;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    new-instance v0, Lcom/ibneer/wooriie/GCMHttpConnect$1;

    invoke-direct {v0, p0}, Lcom/ibneer/wooriie/GCMHttpConnect$1;-><init>(Lcom/ibneer/wooriie/GCMHttpConnect;)V

    iput-object v0, p0, Lcom/ibneer/wooriie/GCMHttpConnect;->mHandler:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/ibneer/wooriie/GCMHttpConnect;->mString:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/ibneer/wooriie/GCMHttpConnect;->mRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/ibneer/wooriie/GCMHttpConnect;)Lcom/ibneer/wooriie/GCMHttpConnect$Request;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ibneer/wooriie/GCMHttpConnect;->mRequest:Lcom/ibneer/wooriie/GCMHttpConnect$Request;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v3, "jsonHtml":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 53
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 54
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 55
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 56
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    if-eqz v1, :cond_1

    .line 60
    const/16 v6, 0x2710

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 64
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 70
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 72
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 68
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "HTTP"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/ibneer/wooriie/GCMHttpConnect;->mString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ibneer/wooriie/GCMHttpConnect;->download(Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 27
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 28
    iget-object v1, p0, Lcom/ibneer/wooriie/GCMHttpConnect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    return-void
.end method
