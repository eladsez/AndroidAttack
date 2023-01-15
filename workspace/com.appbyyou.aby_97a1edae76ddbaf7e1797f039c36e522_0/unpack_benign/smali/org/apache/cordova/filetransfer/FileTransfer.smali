.class public Lorg/apache/cordova/filetransfer/FileTransfer;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$TrackingGZIPInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;,
        Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    }
.end annotation


# static fields
.field public static ABORTED_ERR:I = 0x0

.field private static final BOUNDARY:Ljava/lang/String; = "+++++"

.field public static CONNECTION_ERR:I = 0x0

.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field public static FILE_NOT_FOUND_ERR:I = 0x0

.field public static INVALID_URL_ERR:I = 0x0

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final LINE_START:Ljava/lang/String; = "--"

.field private static final LOG_TAG:Ljava/lang/String; = "FileTransfer"

.field private static final MAX_BUFFER_SIZE:I = 0x4000

.field private static activeRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 73
    sput v1, Lorg/apache/cordova/filetransfer/FileTransfer;->FILE_NOT_FOUND_ERR:I

    .line 74
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->INVALID_URL_ERR:I

    .line 75
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    .line 76
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/filetransfer/FileTransfer;->ABORTED_ERR:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    .line 532
    new-instance v0, Lorg/apache/cordova/filetransfer/FileTransfer$2;

    invoke-direct {v0}, Lorg/apache/cordova/filetransfer/FileTransfer$2;-><init>()V

    sput-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 538
    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/cordova/filetransfer/FileTransfer$3;

    invoke-direct {v2}, Lorg/apache/cordova/filetransfer/FileTransfer$3;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 143
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 8
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 848
    sget-object v4, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 849
    :try_start_0
    sget-object v3, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    .line 850
    .local v0, "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    if-eqz v0, :cond_1

    .line 852
    iget-object v2, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    .line 853
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 857
    :cond_0
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->ABORTED_ERR:I

    iget-object v4, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->source:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->target:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v1

    .line 858
    .local v1, "error":Lorg/json/JSONObject;
    monitor-enter v0

    .line 859
    :try_start_1
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 860
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    .line 861
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 863
    iget-object v3, p0, Lorg/apache/cordova/filetransfer/FileTransfer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/filetransfer/FileTransfer$5;

    invoke-direct {v4, p0, v0}, Lorg/apache/cordova/filetransfer/FileTransfer$5;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 872
    .end local v1    # "error":Lorg/json/JSONObject;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    return-void

    .line 850
    .end local v0    # "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 861
    .restart local v0    # "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    .restart local v1    # "error":Lorg/json/JSONObject;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method static synthetic access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "x0"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 66
    invoke-static {p0}, Lorg/apache/cordova/filetransfer/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/URLConnection;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lorg/apache/cordova/filetransfer/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;

    .prologue
    .line 66
    invoke-static {p0}, Lorg/apache/cordova/filetransfer/FileTransfer;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$400(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lorg/apache/cordova/filetransfer/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/net/URLConnection;

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "connection"    # Ljava/net/URLConnection;
    .param p1, "headers"    # Lorg/json/JSONObject;

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "headerKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 207
    .local v1, "headerValues":Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 208
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "headerValues":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 209
    .restart local v1    # "headerValues":Lorg/json/JSONArray;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 211
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 213
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "headerKey":Ljava/lang/String;
    .end local v1    # "headerValues":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v4

    .line 219
    :cond_2
    return-void
.end method

.method private static createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "errorCode"    # I
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "httpStatus"    # Ljava/lang/Integer;

    .prologue
    .line 614
    const/4 v1, 0x0

    .line 616
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v1    # "error":Lorg/json/JSONObject;
    .local v2, "error":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "code"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    const-string v3, "source"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v3, "target"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    if-eqz p3, :cond_0

    .line 622
    const-string v3, "body"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    :cond_0
    if-eqz p4, :cond_1

    .line 625
    const-string v3, "http_status"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v1, v2

    .line 630
    .end local v2    # "error":Lorg/json/JSONObject;
    .restart local v1    # "error":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string v3, "FileTransfer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 627
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "error":Lorg/json/JSONObject;
    .restart local v2    # "error":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "error":Lorg/json/JSONObject;
    .restart local v1    # "error":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "errorCode"    # I
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 577
    const/4 v5, 0x0

    .line 578
    .local v5, "httpStatus":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v2, "bodyBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 580
    .local v1, "body":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 582
    :try_start_0
    instance-of v8, p3, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_1

    .line 583
    move-object v0, p3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 584
    check-cast p3, Ljava/net/HttpURLConnection;

    .end local p3    # "connection":Ljava/net/URLConnection;
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 585
    .local v4, "err":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 587
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 588
    .local v7, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 591
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 593
    if-eqz v6, :cond_0

    .line 594
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v4    # "err":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 601
    .local v3, "e":Ljava/lang/Throwable;
    const-string v8, "FileTransfer"

    const-string v9, "Error getting HTTP status code from connection."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p0, p1, p2, v1, v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v8

    return-object v8

    .line 596
    .restart local v4    # "err":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 20
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "args"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 658
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "download "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, " to "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v6

    .line 662
    .local v6, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v11

    .line 663
    .local v11, "trustEveryone":Z
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 664
    .local v15, "objectId":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 666
    .local v12, "headers":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 668
    .local v8, "sourceUri":Landroid/net/Uri;
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 669
    .local v17, "tmpTarget":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .end local v17    # "tmpTarget":Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 672
    .local v7, "targetUri":Landroid/net/Uri;
    invoke-static {v8}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v18

    .line 673
    .local v18, "uriType":I
    const/4 v3, 0x6

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    const/4 v10, 0x1

    .line 674
    .local v10, "useHttps":Z
    :goto_1
    if-nez v10, :cond_2

    const/4 v3, 0x5

    move/from16 v0, v18

    if-eq v0, v3, :cond_2

    const/4 v9, 0x1

    .line 675
    .local v9, "isLocalTransfer":Z
    :goto_2
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_3

    .line 676
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->INVALID_URL_ERR:I

    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4, v13}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v16

    .line 677
    .local v16, "error":Lorg/json/JSONObject;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported URI: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 841
    .end local v16    # "error":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 669
    .end local v7    # "targetUri":Landroid/net/Uri;
    .end local v9    # "isLocalTransfer":Z
    .end local v10    # "useHttps":Z
    .end local v18    # "uriType":I
    .restart local v17    # "tmpTarget":Landroid/net/Uri;
    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    goto :goto_0

    .line 673
    .end local v17    # "tmpTarget":Landroid/net/Uri;
    .restart local v7    # "targetUri":Landroid/net/Uri;
    .restart local v18    # "uriType":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 674
    .restart local v10    # "useHttps":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 683
    .restart local v9    # "isLocalTransfer":Z
    :cond_3
    if-nez v9, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 684
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Source URL is not in white list: \'"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\'"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    const/4 v4, 0x0

    const/16 v13, 0x191

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4, v13}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v16

    .line 686
    .restart local v16    # "error":Lorg/json/JSONObject;
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_3

    .line 691
    .end local v16    # "error":Lorg/json/JSONObject;
    :cond_4
    new-instance v5, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 692
    .local v5, "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    sget-object v4, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 693
    :try_start_0
    sget-object v3, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v19

    new-instance v3, Lorg/apache/cordova/filetransfer/FileTransfer$4;

    move-object/from16 v4, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v15}, Lorg/apache/cordova/filetransfer/FileTransfer$4;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;Landroid/net/Uri;ZZZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 694
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "args"    # Lorg/json/JSONArray;
    .param p1, "position"    # I
    .param p2, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 641
    move-object v0, p2

    .line 642
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 643
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    :cond_0
    move-object v0, p2

    .line 648
    :cond_1
    return-object v0
.end method

.method private static getInputStream(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .locals 4
    .param p0, "conn"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingGZIPInputStream;

    new-instance v2, Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingGZIPInputStream;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer$ExposedGZIPInputStream;)V

    .line 528
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 515
    if-eqz p0, :cond_0

    .line 517
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .param p0, "connection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 562
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 565
    .local v2, "oldFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 566
    .local v3, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    sget-object v5, Lorg/apache/cordova/filetransfer/FileTransfer;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 567
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 568
    .local v1, "newFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v1    # "newFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v2

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FileTransfer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 25
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "args"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 235
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "upload "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v3, 0x2

    const-string v4, "file"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 239
    .local v14, "fileKey":Ljava/lang/String;
    const/4 v3, 0x3

    const-string v4, "image.jpg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "fileName":Ljava/lang/String;
    const/4 v3, 0x4

    const-string v4, "image/jpeg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, "mimeType":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .local v13, "params":Lorg/json/JSONObject;
    :goto_0
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v9

    .line 244
    .local v9, "trustEveryone":Z
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v18, 0x1

    .line 246
    .local v18, "chunkedMode":Z
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "headers"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 247
    .local v12, "headers":Lorg/json/JSONObject;
    :goto_2
    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 248
    .local v20, "objectId":Ljava/lang/String;
    const/16 v3, 0xa

    const-string v4, "POST"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/filetransfer/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "httpMethod":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v6

    .line 252
    .local v6, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileKey: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileName: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mimeType: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "params: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trustEveryone: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chunkedMode: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "headers: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "objectId: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpMethod: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 264
    .local v7, "targetUri":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 265
    .local v22, "tmpSrc":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .end local v22    # "tmpSrc":Landroid/net/Uri;
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    .line 268
    .local v17, "sourceUri":Landroid/net/Uri;
    invoke-static {v7}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v23

    .line 269
    .local v23, "uriType":I
    const/4 v3, 0x6

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    const/4 v8, 0x1

    .line 270
    .local v8, "useHttps":Z
    :goto_4
    const/4 v3, 0x5

    move/from16 v0, v23

    if-eq v0, v3, :cond_6

    if-nez v8, :cond_6

    .line 271
    sget v3, Lorg/apache/cordova/filetransfer/FileTransfer;->INVALID_URL_ERR:I

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4, v11}, Lorg/apache/cordova/filetransfer/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v21

    .line 272
    .local v21, "error":Lorg/json/JSONObject;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported URI: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 512
    .end local v21    # "error":Lorg/json/JSONObject;
    :goto_5
    return-void

    .line 241
    .end local v6    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v7    # "targetUri":Landroid/net/Uri;
    .end local v8    # "useHttps":Z
    .end local v9    # "trustEveryone":Z
    .end local v10    # "httpMethod":Ljava/lang/String;
    .end local v12    # "headers":Lorg/json/JSONObject;
    .end local v13    # "params":Lorg/json/JSONObject;
    .end local v17    # "sourceUri":Landroid/net/Uri;
    .end local v18    # "chunkedMode":Z
    .end local v20    # "objectId":Ljava/lang/String;
    .end local v23    # "uriType":I
    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    goto/16 :goto_0

    .line 244
    .restart local v9    # "trustEveryone":Z
    .restart local v13    # "params":Lorg/json/JSONObject;
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 246
    .restart local v18    # "chunkedMode":Z
    :cond_3
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    goto/16 :goto_2

    .line 265
    .restart local v6    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .restart local v7    # "targetUri":Landroid/net/Uri;
    .restart local v10    # "httpMethod":Ljava/lang/String;
    .restart local v12    # "headers":Lorg/json/JSONObject;
    .restart local v20    # "objectId":Ljava/lang/String;
    .restart local v22    # "tmpSrc":Landroid/net/Uri;
    :cond_4
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v22

    goto :goto_3

    .line 269
    .end local v22    # "tmpSrc":Landroid/net/Uri;
    .restart local v17    # "sourceUri":Landroid/net/Uri;
    .restart local v23    # "uriType":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 277
    .restart local v8    # "useHttps":Z
    :cond_6
    new-instance v5, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 278
    .local v5, "context":Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;
    sget-object v4, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 279
    :try_start_0
    sget-object v3, Lorg/apache/cordova/filetransfer/FileTransfer;->activeRequests:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v24

    new-instance v3, Lorg/apache/cordova/filetransfer/FileTransfer$1;

    move-object/from16 v4, p0

    move-object/from16 v11, p2

    move-object/from16 v19, p1

    invoke-direct/range {v3 .. v20}, Lorg/apache/cordova/filetransfer/FileTransfer$1;-><init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 280
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    const-string v6, "upload"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "download"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    :cond_0
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "target":Ljava/lang/String;
    const-string v5, "upload"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-direct {p0, v2, v3, p2, p3}, Lorg/apache/cordova/filetransfer/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :goto_0
    return v4

    .line 186
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v3    # "target":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->MALFORMED_URL_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    const-string v7, "UTF-8 error."

    invoke-direct {v5, v6, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-direct {p0, v2, v3, p2, p3}, Lorg/apache/cordova/filetransfer/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 193
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_2
    const-string v6, "abort"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "objectId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer;->abort(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .end local v1    # "objectId":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 199
    goto :goto_0
.end method
