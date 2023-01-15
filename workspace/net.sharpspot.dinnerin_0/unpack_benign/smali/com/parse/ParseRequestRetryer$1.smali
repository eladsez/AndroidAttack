.class Lcom/parse/ParseRequestRetryer$1;
.super Ljava/lang/Object;
.source "ParseRequestRetryer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequestRetryer;->sendOneRequestAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequestRetryer;

.field private final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequestRetryer;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    iput-object p2, p0, Lcom/parse/ParseRequestRetryer$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseRequestRetryer$1;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v11}, Lcom/parse/ParseRequestRetryer;->access$0(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/HttpClient;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v12}, Lcom/parse/ParseRequestRetryer;->access$1(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 59
    .local v8, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v11}, Lcom/parse/ParseRequestRetryer;->access$1(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GET"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    const/4 v10, -0x1

    .line 61
    .local v10, "totalSize":I
    const-string v11, "Content-Length"

    invoke-interface {v8, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 64
    .local v2, "contentLengthHeader":[Lorg/apache/http/Header;
    array-length v11, v2

    if-lez v11, :cond_0

    .line 65
    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 67
    :cond_0
    const/4 v4, 0x0

    .line 69
    .local v4, "downloadedSize":I
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 70
    .local v9, "responseStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const v11, 0x8000

    new-array v3, v11, [B

    .line 75
    .local v3, "data":[B
    :cond_1
    :goto_0
    const/4 v11, 0x0

    array-length v12, v3

    invoke-virtual {v9, v3, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "nRead":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_2

    .line 86
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 103
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "contentLengthHeader":[Lorg/apache/http/Header;
    .end local v3    # "data":[B
    .end local v4    # "downloadedSize":I
    .end local v6    # "nRead":I
    .end local v9    # "responseStream":Ljava/io/InputStream;
    .end local v10    # "totalSize":I
    :goto_1
    return-object v11

    .line 76
    .restart local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "contentLengthHeader":[Lorg/apache/http/Header;
    .restart local v3    # "data":[B
    .restart local v4    # "downloadedSize":I
    .restart local v6    # "nRead":I
    .restart local v9    # "responseStream":Ljava/io/InputStream;
    .restart local v10    # "totalSize":I
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v1, v3, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    add-int/2addr v4, v6

    .line 78
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    if-eqz v11, :cond_1

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 80
    int-to-float v11, v4

    int-to-float v12, v10

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 82
    .local v7, "progressToReport":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parse/ParseRequestRetryer$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v11, v12}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "contentLengthHeader":[Lorg/apache/http/Header;
    .end local v3    # "data":[B
    .end local v4    # "downloadedSize":I
    .end local v6    # "nRead":I
    .end local v7    # "progressToReport":I
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "responseStream":Ljava/io/InputStream;
    .end local v10    # "totalSize":I
    :catch_0
    move-exception v5

    .line 91
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v11}, Lcom/parse/ParseRequestRetryer;->access$0(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/HttpClient;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 92
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    const-string v12, "bad protocol"

    invoke-virtual {v11, v12, v5}, Lcom/parse/ParseRequestRetryer;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v11

    throw v11

    .line 93
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v5

    .line 94
    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v11}, Lcom/parse/ParseRequestRetryer;->access$0(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/HttpClient;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 95
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/ParseRequestRetryer$1;->this$0:Lcom/parse/ParseRequestRetryer;

    const-string v12, "i/o failure"

    invoke-virtual {v11, v12, v5}, Lcom/parse/ParseRequestRetryer;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v11

    throw v11

    .line 98
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    div-int/lit8 v11, v11, 0x64

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 99
    new-instance v11, Lcom/parse/ParseException;

    const/16 v12, 0x64

    .line 100
    const-string v13, "Upload to S3 failed. %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 99
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v11

    .line 103
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1
.end method
