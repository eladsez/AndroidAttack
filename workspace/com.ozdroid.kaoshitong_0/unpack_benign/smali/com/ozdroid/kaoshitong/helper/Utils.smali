.class public Lcom/ozdroid/kaoshitong/helper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 42
    const/16 v0, 0x400

    .line 45
    .local v0, "buffer_size":I
    const/16 v3, 0x400

    :try_start_0
    new-array v1, v3, [B

    .line 48
    .local v1, "bytes":[B
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 49
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 55
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :goto_1
    return-void

    .line 51
    .restart local v1    # "bytes":[B
    .restart local v2    # "count":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "GBK"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 78
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getCacheFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "bishitong/.dbdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v0, "cacheDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_0
    return-object v0

    .line 28
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "cacheDir":Ljava/io/File;
    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 9
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v3, -0x1

    .line 93
    .local v3, "nFileLength":I
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 95
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const-string v7, "User-Agent"

    const-string v8, "Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v7, "Accept-Language"

    const-string v8, "zh-cn,zh"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v7, "Accept-Charset"

    const-string v8, "utf-8,GB2312"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v7, "Keep-Alive"

    const-string v8, "115"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v7, "connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v7, "user-agent"

    const-string v8, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v7, 0x4e20

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 104
    .local v4, "responseCode":I
    const/16 v7, 0x190

    if-lt v4, v7, :cond_0

    .line 105
    const-wide/16 v7, -0x2

    .line 124
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v4    # "responseCode":I
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    return-wide v7

    .line 108
    .restart local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v4    # "responseCode":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_0
    const/4 v2, 0x1

    .line 109
    .local v2, "i":I
    :goto_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "sHeader":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 111
    const-string v7, "content-length"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 124
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "i":I
    .end local v4    # "responseCode":I
    .end local v5    # "sHeader":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :cond_1
    :goto_2
    int-to-long v7, v3

    goto :goto_0

    .line 108
    .restart local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "i":I
    .restart local v4    # "responseCode":I
    .restart local v5    # "sHeader":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "i":I
    .end local v4    # "responseCode":I
    .end local v5    # "sHeader":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 119
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "TAG"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "TAG"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getRandom(II)I
    .locals 2
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 65
    .local v0, "rand2":Ljava/util/Random;
    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p0

    return v1
.end method

.method public static percent(JJ)I
    .locals 6
    .param p0, "p1"    # J
    .param p2, "p2"    # J

    .prologue
    .line 131
    long-to-double v2, p0

    long-to-double v4, p2

    div-double v0, v2, v4

    .line 132
    .local v0, "rat":D
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    const-wide v4, 0x3ff6666666666666L    # 1.4

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method
