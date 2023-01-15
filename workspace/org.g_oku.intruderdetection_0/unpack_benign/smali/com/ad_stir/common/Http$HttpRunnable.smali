.class Lcom/ad_stir/common/Http$HttpRunnable;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/common/Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpRunnable"
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field private final timeoutSecond:I

.field private final ua:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeoutSecond"    # I
    .param p3, "ua"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/ad_stir/common/Http$HttpRunnable;->url:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/ad_stir/common/Http$HttpRunnable;->timeoutSecond:I

    .line 81
    iput-object p3, p0, Lcom/ad_stir/common/Http$HttpRunnable;->ua:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ad_stir/common/Http$HttpRunnable;->response:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, "ret":Ljava/lang/String;
    const/4 v5, 0x0

    .line 88
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/ad_stir/common/Http$HttpRunnable;->url:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, "urlValue":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 90
    .local v2, "conn":Ljava/net/URLConnection;
    instance-of v10, v2, Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_0

    .line 91
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 92
    .local v4, "httpconn":Ljava/net/HttpURLConnection;
    iget-object v10, p0, Lcom/ad_stir/common/Http$HttpRunnable;->ua:Ljava/lang/String;

    if-eqz v10, :cond_0

    const-string v10, "User-Agent"

    iget-object v11, p0, Lcom/ad_stir/common/Http$HttpRunnable;->ua:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v4    # "httpconn":Ljava/net/HttpURLConnection;
    :cond_0
    iget v10, p0, Lcom/ad_stir/common/Http$HttpRunnable;->timeoutSecond:I

    mul-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 95
    iget v10, p0, Lcom/ad_stir/common/Http$HttpRunnable;->timeoutSecond:I

    mul-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 97
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v1, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 101
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 105
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 106
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "urlValue":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iput-object v7, p0, Lcom/ad_stir/common/Http$HttpRunnable;->response:Ljava/lang/String;

    .line 115
    return-void

    .line 104
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "urlValue":Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 109
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v5, v6

    .line 112
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 110
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 113
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 110
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "urlValue":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 108
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 109
    :goto_3
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 112
    :cond_4
    :goto_4
    throw v10

    .line 110
    :catch_3
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 108
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "urlValue":Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 105
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v9    # "urlValue":Ljava/net/URL;
    :catch_4
    move-exception v3

    goto :goto_1
.end method
