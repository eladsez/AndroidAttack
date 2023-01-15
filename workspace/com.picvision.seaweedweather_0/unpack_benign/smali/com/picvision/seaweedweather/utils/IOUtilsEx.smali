.class public Lcom/picvision/seaweedweather/utils/IOUtilsEx;
.super Lorg/apache/commons/io/IOUtils;
.source "IOUtilsEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/apache/commons/io/IOUtils;-><init>()V

    return-void
.end method

.method public static copyUrl(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 8
    .param p0, "srcUrl"    # Ljava/lang/String;
    .param p1, "destOutpstream"    # Ljava/io/OutputStream;

    .prologue
    .line 23
    const/4 v4, 0x0

    .line 24
    .local v4, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 25
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const/4 v0, 0x0

    .line 27
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 30
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 31
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 32
    invoke-static {v4, p1}, Lcom/picvision/seaweedweather/utils/IOUtilsEx;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    if-eqz v2, :cond_0

    .line 38
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 43
    :cond_0
    :goto_0
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 44
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 46
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v6

    .line 36
    :goto_2
    if-eqz v2, :cond_1

    .line 38
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 43
    :cond_1
    :goto_3
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 44
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 35
    :catchall_0
    move-exception v6

    .line 36
    :goto_4
    if-eqz v2, :cond_2

    .line 38
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 43
    :cond_2
    :goto_5
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 44
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 45
    throw v6

    .line 39
    :catch_1
    move-exception v6

    goto :goto_3

    :catch_2
    move-exception v7

    goto :goto_5

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v6

    goto :goto_0

    .line 35
    .end local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_4

    .line 33
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2
.end method
