.class Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;
.super Ljava/lang/Object;
.source "DownloadManagerAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    iput-object p2, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;->val$url:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 89
    :try_start_0
    iget-object v6, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$4(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;I)V

    .line 90
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, "sourceUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 92
    .local v0, "conn":Ljava/net/URLConnection;
    const/16 v6, 0xbb8

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 93
    new-instance v4, Ljava/io/BufferedReader;

    .line 94
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 95
    const-string v8, "UTF-8"

    .line 94
    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 98
    .local v3, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v1, "content":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 103
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 105
    iget-object v6, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$6(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;ILjava/lang/Object;)V

    .line 111
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v1    # "content":Ljava/lang/StringBuffer;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sourceUrl":Ljava/net/URL;
    :goto_1
    return-void

    .line 100
    .restart local v0    # "conn":Ljava/net/URLConnection;
    .restart local v1    # "content":Ljava/lang/StringBuffer;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sourceUrl":Ljava/net/URL;
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v1    # "content":Ljava/lang/StringBuffer;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sourceUrl":Ljava/net/URL;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$2;->this$0:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    const/4 v7, -0x1

    invoke-static {v6, v7, v2}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->access$6(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;ILjava/lang/Object;)V

    .line 109
    const-string v6, "MyError"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
