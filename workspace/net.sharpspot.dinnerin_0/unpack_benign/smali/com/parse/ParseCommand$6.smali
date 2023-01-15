.class Lcom/parse/ParseCommand$6;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand;->sendRequestAsync(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommand;

.field private final synthetic val$client:Lorg/apache/http/client/HttpClient;

.field private final synthetic val$post:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$6;->this$0:Lcom/parse/ParseCommand;

    iput-object p2, p0, Lcom/parse/ParseCommand$6;->val$client:Lorg/apache/http/client/HttpClient;

    iput-object p3, p0, Lcom/parse/ParseCommand$6;->val$post:Lorg/apache/http/client/methods/HttpPost;

    .line 417
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
    invoke-virtual {p0}, Lcom/parse/ParseCommand$6;->call()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseCommand$6;->val$client:Lorg/apache/http/client/HttpClient;

    iget-object v7, p0, Lcom/parse/ParseCommand$6;->val$post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 427
    .local v2, "rawResponse":Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 428
    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x2000

    .line 427
    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 429
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 437
    .local v1, "json":Ljava/lang/String;
    :try_start_1
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, "tokener":Lorg/json/JSONTokener;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 443
    .local v4, "result":Lorg/json/JSONObject;
    return-object v4

    .line 430
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "rawResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "tokener":Lorg/json/JSONTokener;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    iget-object v6, p0, Lcom/parse/ParseCommand$6;->this$0:Lcom/parse/ParseCommand;

    const-string v7, "bad protocol"

    invoke-virtual {v6, v7, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6

    .line 432
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/parse/ParseCommand$6;->this$0:Lcom/parse/ParseCommand;

    const-string v7, "i/o failure"

    invoke-virtual {v6, v7, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6

    .line 439
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "json":Ljava/lang/String;
    .restart local v2    # "rawResponse":Lorg/apache/http/HttpResponse;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 440
    .local v0, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/parse/ParseCommand$6;->this$0:Lcom/parse/ParseCommand;

    const-string v7, "bad json response"

    invoke-virtual {v6, v7, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6
.end method
