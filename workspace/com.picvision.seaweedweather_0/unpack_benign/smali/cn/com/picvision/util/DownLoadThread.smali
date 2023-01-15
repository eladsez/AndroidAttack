.class public Lcn/com/picvision/util/DownLoadThread;
.super Ljava/lang/Object;
.source "DownLoadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER:I = 0x400

.field public static final GET_METHOD:I = 0x0

.field public static final POST_METHOD:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentLength:J

.field private fileName:Ljava/lang/String;

.field private in:Ljava/io/BufferedInputStream;

.field private isComplete:Z

.field private isEncrypt:Z

.field private isResponse:Z

.field private manager:Lcn/com/picvision/util/ThreadManager;

.field private saveDir:Ljava/io/File;

.field private wholeLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcn/com/picvision/util/DownLoadThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/DownLoadThread;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcn/com/picvision/util/ThreadManager;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;I)V
    .locals 1
    .param p1, "manager"    # Lcn/com/picvision/util/ThreadManager;
    .param p2, "isEncrypt"    # Z
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "reqPath"    # Ljava/lang/String;
    .param p5, "saveDir"    # Ljava/io/File;
    .param p7, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/picvision/util/ThreadManager;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcn/com/picvision/util/DownLoadThread;->isEncrypt:Z

    .line 43
    iput-boolean v0, p0, Lcn/com/picvision/util/DownLoadThread;->isComplete:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/picvision/util/DownLoadThread;->manager:Lcn/com/picvision/util/ThreadManager;

    .line 59
    iput-object p1, p0, Lcn/com/picvision/util/DownLoadThread;->manager:Lcn/com/picvision/util/ThreadManager;

    .line 60
    iput-boolean p2, p0, Lcn/com/picvision/util/DownLoadThread;->isEncrypt:Z

    .line 61
    iput-object p3, p0, Lcn/com/picvision/util/DownLoadThread;->fileName:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcn/com/picvision/util/DownLoadThread;->saveDir:Ljava/io/File;

    .line 63
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_0
    :goto_0
    invoke-direct {p0, p4, p6, p7}, Lcn/com/picvision/util/DownLoadThread;->init(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 71
    return-void

    .line 68
    :cond_1
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private final appendCurrent(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 221
    iget-wide v0, p0, Lcn/com/picvision/util/DownLoadThread;->currentLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/picvision/util/DownLoadThread;->currentLength:J

    .line 222
    iget-object v0, p0, Lcn/com/picvision/util/DownLoadThread;->manager:Lcn/com/picvision/util/ThreadManager;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcn/com/picvision/util/DownLoadThread;->manager:Lcn/com/picvision/util/ThreadManager;

    invoke-virtual {v0, p1}, Lcn/com/picvision/util/ThreadManager;->appendSize(I)V

    .line 225
    :cond_0
    sget-object v0, Lcn/com/picvision/util/DownLoadThread;->TAG:Ljava/lang/String;

    const-string v1, "run()adfsdf"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private final appendWhole(J)V
    .locals 2
    .param p1, "length"    # J

    .prologue
    .line 233
    iget-wide v0, p0, Lcn/com/picvision/util/DownLoadThread;->wholeLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/com/picvision/util/DownLoadThread;->wholeLength:J

    .line 234
    return-void
.end method

.method private final doGet(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "reqUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 132
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v5, ""

    .line 133
    .local v5, "keyStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 134
    .local v6, "num":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 144
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 145
    const/4 v4, 0x0

    .line 148
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keyStr":Ljava/lang/String;
    .end local v6    # "num":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "urlPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 151
    .local v3, "httpconn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 152
    const-string v8, "GET"

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    const/16 v8, 0x1770

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 155
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 156
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcn/com/picvision/util/DownLoadThread;->isResponse:Z

    .line 157
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Lcn/com/picvision/util/DownLoadThread;->appendWhole(J)V

    .line 158
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x400

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v8, p0, Lcn/com/picvision/util/DownLoadThread;->in:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    const/4 v1, 0x0

    .line 166
    const/4 v7, 0x0

    .line 172
    :goto_1
    return-void

    .line 135
    .end local v3    # "httpconn":Ljava/net/HttpURLConnection;
    .end local v7    # "urlPath":Ljava/lang/String;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "keyStr":Ljava/lang/String;
    .restart local v6    # "num":I
    :cond_2
    if-eqz v6, :cond_3

    .line 136
    const-string v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "keyStr":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 139
    .restart local v5    # "keyStr":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v8, "="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keyStr":Ljava/lang/String;
    .end local v6    # "num":I
    .restart local v3    # "httpconn":Ljava/net/HttpURLConnection;
    .restart local v7    # "urlPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 161
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 165
    const/4 v1, 0x0

    .line 166
    const/4 v7, 0x0

    goto :goto_1

    .line 162
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 163
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    const/4 v1, 0x0

    .line 166
    const/4 v7, 0x0

    goto :goto_1

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 165
    const/4 v1, 0x0

    .line 166
    const/4 v7, 0x0

    .line 171
    throw v8
.end method

.method private final doPost(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "reqUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v4, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v3, ""

    .line 85
    .local v3, "keyStr":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 91
    const/4 v2, 0x0

    .line 94
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "keyStr":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 95
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    const/4 v7, 0x0

    .line 97
    .local v7, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .local v6, "request":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 99
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v8, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 101
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 102
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcn/com/picvision/util/DownLoadThread;->isResponse:Z

    .line 103
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 104
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcn/com/picvision/util/DownLoadThread;->appendWhole(J)V

    .line 105
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x400

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v8, p0, Lcn/com/picvision/util/DownLoadThread;->in:Ljava/io/BufferedInputStream;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    const/4 v7, 0x0

    .line 120
    :goto_1
    return-void

    .line 86
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "keyStr":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "keyStr":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 87
    .restart local v3    # "keyStr":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    .line 88
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v3, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "keyStr":Ljava/lang/String;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 109
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v7, 0x0

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 111
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v7, 0x0

    goto :goto_1

    .line 112
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 113
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v7, 0x0

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 115
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v7, 0x0

    .line 119
    throw v8

    .line 114
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_5

    .line 112
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v8

    move-object v0, v8

    move-object v5, v6

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .line 110
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catch_4
    move-exception v8

    move-object v0, v8

    move-object v5, v6

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 108
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v8

    move-object v0, v8

    move-object v5, v6

    .end local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2
.end method

.method private final init(Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 2
    .param p1, "reqUrl"    # Ljava/lang/String;
    .param p3, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 186
    invoke-direct {p0, p1, p2}, Lcn/com/picvision/util/DownLoadThread;->doPost(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/com/picvision/util/DownLoadThread;->doGet(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcn/com/picvision/util/DownLoadThread;->in:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcn/com/picvision/util/DownLoadThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getComplete()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcn/com/picvision/util/DownLoadThread;->isComplete:Z

    return v0
.end method

.method public getCurrentLength()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcn/com/picvision/util/DownLoadThread;->currentLength:J

    return-wide v0
.end method

.method public final getResponse()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcn/com/picvision/util/DownLoadThread;->isResponse:Z

    return v0
.end method

.method public getWholeLength()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcn/com/picvision/util/DownLoadThread;->wholeLength:J

    return-wide v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 254
    sget-object v6, Lcn/com/picvision/util/DownLoadThread;->TAG:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/picvision/util/DownLoadThread;->fileName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v6, p0, Lcn/com/picvision/util/DownLoadThread;->isResponse:Z

    if-eqz v6, :cond_1

    .line 256
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcn/com/picvision/util/DownLoadThread;->saveDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/com/picvision/util/DownLoadThread;->fileName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v5, "tempFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 259
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v6, Lcn/com/picvision/util/DownLoadThread;->TAG:Ljava/lang/String;

    const-string v7, "run()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 262
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 263
    .local v2, "len":I
    :goto_0
    iget-object v6, p0, Lcn/com/picvision/util/DownLoadThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 270
    iget-wide v6, p0, Lcn/com/picvision/util/DownLoadThread;->currentLength:J

    iget-wide v8, p0, Lcn/com/picvision/util/DownLoadThread;->wholeLength:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 271
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcn/com/picvision/util/DownLoadThread;->isComplete:Z

    .line 272
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcn/com/picvision/util/DownLoadThread;->saveDir:Ljava/io/File;

    iget-object v8, p0, Lcn/com/picvision/util/DownLoadThread;->fileName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 274
    :cond_0
    iget-object v6, p0, Lcn/com/picvision/util/DownLoadThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 276
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 283
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_1
    :goto_1
    sget-object v6, Lcn/com/picvision/util/DownLoadThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcn/com/picvision/util/DownLoadThread;->isComplete:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 264
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_2
    :try_start_2
    iget-boolean v6, p0, Lcn/com/picvision/util/DownLoadThread;->isEncrypt:Z

    if-eqz v6, :cond_3

    .line 265
    invoke-static {v0}, Lcn/com/picvision/util/Encipher;->encrypt([B)[B

    move-result-object v0

    .line 267
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 268
    invoke-direct {p0, v2}, Lcn/com/picvision/util/DownLoadThread;->appendCurrent(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 277
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .line 278
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 280
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 277
    :catch_3
    move-exception v6

    move-object v1, v6

    goto :goto_2
.end method
