.class public Lcom/google/android/gcm/server/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gcm/server/Sender$CustomParserException;
    }
.end annotation


# static fields
.field protected static final BACKOFF_INITIAL_DELAY:I = 0x3e8

.field protected static final MAX_BACKOFF_DELAY:I = 0xfa000

.field protected static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final key:Ljava/lang/String;

.field protected final logger:Ljava/util/logging/Logger;

.field protected final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gcm/server/Sender;->random:Ljava/util/Random;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    .line 88
    invoke-static {p1}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gcm/server/Sender;->key:Ljava/lang/String;

    .line 89
    return-void
.end method

.method protected static addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "body"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {p0}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    return-void
.end method

.method private getNumber(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .param p2, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "json":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 427
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 428
    new-instance v1, Lcom/google/android/gcm/server/Sender$CustomParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gcm/server/Sender$CustomParserException;-><init>(Lcom/google/android/gcm/server/Sender;Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_1

    .line 431
    new-instance v1, Lcom/google/android/gcm/server/Sender$CustomParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not contain a number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gcm/server/Sender$CustomParserException;-><init>(Lcom/google/android/gcm/server/Sender;Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_1
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method protected static getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 536
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v0, "content":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "newLine":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :cond_1
    if-nez v1, :cond_0

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 548
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static newBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private newIoException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 4
    .param p1, "responseBody"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing JSON response ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected static final newKeyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 491
    .local v0, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-object v0
.end method

.method static nonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "argument":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    return-object p0
.end method

.method private setJsonField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 421
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_0
    return-void
.end method

.method private split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 444
    const-string v1, "="

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 446
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid response line from GCM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_0
    return-object v0
.end method

.method private updateStatus(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gcm/server/MulticastResult;)Ljava/util/List;
    .locals 9
    .param p3, "multicastResult"    # Lcom/google/android/gcm/server/MulticastResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gcm/server/Result;",
            ">;",
            "Lcom/google/android/gcm/server/MulticastResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "unsentRegIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "allResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gcm/server/Result;>;"
    invoke-virtual {p3}, Lcom/google/android/gcm/server/MulticastResult;->getResults()Ljava/util/List;

    move-result-object v5

    .line 313
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gcm/server/Result;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 315
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Internal error: sizes do not match. currentResults: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; unsentRegIds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 318
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v2, "newUnsentRegIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 320
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 321
    .local v3, "regId":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gcm/server/Result;

    .line 322
    .local v4, "result":Lcom/google/android/gcm/server/Result;
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {v4}, Lcom/google/android/gcm/server/Result;->getErrorCodeName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v6, "Unavailable"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "error":Ljava/lang/String;
    .end local v3    # "regId":Ljava/lang/String;
    .end local v4    # "result":Lcom/google/android/gcm/server/Result;
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 524
    .local v0, "conn":Ljava/net/HttpURLConnection;
    return-object v0
.end method

.method protected post(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gcm/server/Sender;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 464
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "arguments cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 466
    :cond_1
    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL does not use https: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 469
    :cond_2
    iget-object v3, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending POST to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 472
    .local v0, "bytes":[B
    invoke-virtual {p0, p1}, Lcom/google/android/gcm/server/Sender;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 473
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 474
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 475
    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 476
    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 477
    const-string v3, "Content-Type"

    invoke-virtual {v1, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gcm/server/Sender;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 480
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 481
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 482
    return-object v1
.end method

.method public send(Lcom/google/android/gcm/server/Message;Ljava/util/List;I)Lcom/google/android/gcm/server/MulticastResult;
    .locals 23
    .param p1, "message"    # Lcom/google/android/gcm/server/Message;
    .param p3, "retries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gcm/server/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/google/android/gcm/server/MulticastResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "regIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 247
    .local v9, "attempt":I
    const/4 v14, 0x0

    .line 248
    .local v14, "multicastResult":Lcom/google/android/gcm/server/MulticastResult;
    const/16 v10, 0x3e8

    .line 251
    .local v10, "backoff":I
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v17, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gcm/server/Result;>;"
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    .local v20, "unsentRegIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v13, "multicastIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Attempt #"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to send message "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to regIds "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 261
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gcm/server/Sender;->sendNoRetry(Lcom/google/android/gcm/server/Message;Ljava/util/List;)Lcom/google/android/gcm/server/MulticastResult;

    move-result-object v14

    .line 262
    invoke-virtual {v14}, Lcom/google/android/gcm/server/MulticastResult;->getMulticastId()J

    move-result-wide v7

    .line 263
    .local v7, "multicastId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "multicast_id on attempt # "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 265
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/gcm/server/Sender;->updateStatus(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gcm/server/MulticastResult;)Ljava/util/List;

    move-result-object v20

    .line 267
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move/from16 v0, p3

    if-gt v9, v0, :cond_4

    const/16 v19, 0x1

    .line 268
    .local v19, "tryAgain":Z
    :goto_0
    if-eqz v19, :cond_2

    .line 269
    div-int/lit8 v3, v10, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->random:Ljava/util/Random;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    add-int v18, v3, v21

    .line 270
    .local v18, "sleepTime":I
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gcm/server/Sender;->sleep(J)V

    .line 271
    mul-int/lit8 v3, v10, 0x2

    const v21, 0xfa000

    move/from16 v0, v21

    if-ge v3, v0, :cond_2

    .line 272
    mul-int/lit8 v10, v10, 0x2

    .line 275
    .end local v18    # "sleepTime":I
    :cond_2
    if-nez v19, :cond_0

    .line 277
    const/4 v4, 0x0

    .local v4, "success":I
    const/4 v5, 0x0

    .local v5, "failure":I
    const/4 v6, 0x0

    .line 278
    .local v6, "canonicalIds":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gcm/server/Result;

    .line 279
    .local v16, "result":Lcom/google/android/gcm/server/Result;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gcm/server/Result;->getMessageId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 280
    add-int/lit8 v4, v4, 0x1

    .line 281
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gcm/server/Result;->getCanonicalRegistrationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 282
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 267
    .end local v4    # "success":I
    .end local v5    # "failure":I
    .end local v6    # "canonicalIds":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "result":Lcom/google/android/gcm/server/Result;
    .end local v19    # "tryAgain":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 285
    .restart local v4    # "success":I
    .restart local v5    # "failure":I
    .restart local v6    # "canonicalIds":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "result":Lcom/google/android/gcm/server/Result;
    .restart local v19    # "tryAgain":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 289
    .end local v16    # "result":Lcom/google/android/gcm/server/Result;
    :cond_6
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 290
    new-instance v3, Lcom/google/android/gcm/server/MulticastResult$Builder;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gcm/server/MulticastResult$Builder;-><init>(IIIJ)V

    invoke-virtual {v3, v13}, Lcom/google/android/gcm/server/MulticastResult$Builder;->retryMulticastIds(Ljava/util/List;)Lcom/google/android/gcm/server/MulticastResult$Builder;

    move-result-object v11

    .line 293
    .local v11, "builder":Lcom/google/android/gcm/server/MulticastResult$Builder;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 294
    .local v15, "regId":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gcm/server/Result;

    .line 295
    .restart local v16    # "result":Lcom/google/android/gcm/server/Result;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/google/android/gcm/server/MulticastResult$Builder;->addResult(Lcom/google/android/gcm/server/Result;)Lcom/google/android/gcm/server/MulticastResult$Builder;

    goto :goto_2

    .line 297
    .end local v15    # "regId":Ljava/lang/String;
    .end local v16    # "result":Lcom/google/android/gcm/server/Result;
    :cond_7
    invoke-virtual {v11}, Lcom/google/android/gcm/server/MulticastResult$Builder;->build()Lcom/google/android/gcm/server/MulticastResult;

    move-result-object v3

    return-object v3
.end method

.method public send(Lcom/google/android/gcm/server/Message;Ljava/lang/String;I)Lcom/google/android/gcm/server/Result;
    .locals 8
    .param p1, "message"    # Lcom/google/android/gcm/server/Message;
    .param p2, "registrationId"    # Ljava/lang/String;
    .param p3, "retries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "attempt":I
    const/4 v2, 0x0

    .line 113
    .local v2, "result":Lcom/google/android/gcm/server/Result;
    const/16 v1, 0x3e8

    .line 116
    .local v1, "backoff":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    iget-object v5, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to send message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to regIds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gcm/server/Sender;->sendNoRetry(Lcom/google/android/gcm/server/Message;Ljava/lang/String;)Lcom/google/android/gcm/server/Result;

    move-result-object v2

    .line 122
    if-nez v2, :cond_3

    if-gt v0, p3, :cond_3

    const/4 v4, 0x1

    .line 123
    .local v4, "tryAgain":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 124
    div-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/google/android/gcm/server/Sender;->random:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int v3, v5, v6

    .line 125
    .local v3, "sleepTime":I
    int-to-long v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gcm/server/Sender;->sleep(J)V

    .line 126
    mul-int/lit8 v5, v1, 0x2

    const v6, 0xfa000

    if-ge v5, v6, :cond_2

    .line 127
    mul-int/lit8 v1, v1, 0x2

    .line 130
    .end local v3    # "sleepTime":I
    :cond_2
    if-nez v4, :cond_0

    .line 131
    if-nez v2, :cond_4

    .line 132
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not send message after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    .end local v4    # "tryAgain":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 135
    .restart local v4    # "tryAgain":Z
    :cond_4
    return-object v2
.end method

.method public sendNoRetry(Lcom/google/android/gcm/server/Message;Ljava/util/List;)Lcom/google/android/gcm/server/MulticastResult;
    .locals 30
    .param p1, "message"    # Lcom/google/android/gcm/server/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gcm/server/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gcm/server/MulticastResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "registrationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/google/android/gcm/server/Sender;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 346
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v28, "registrationIds cannot be empty"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 348
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v15, "jsonRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v27, "time_to_live"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->getTimeToLive()Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v15, v1, v2}, Lcom/google/android/gcm/server/Sender;->setJsonField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v27, "collapse_key"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->getCollapseKey()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v15, v1, v2}, Lcom/google/android/gcm/server/Sender;->setJsonField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    const-string v27, "delay_while_idle"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->isDelayWhileIdle()Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v15, v1, v2}, Lcom/google/android/gcm/server/Sender;->setJsonField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    const-string v27, "registration_ids"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->getData()Ljava/util/Map;

    move-result-object v21

    .line 355
    .local v21, "payload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_1

    .line 356
    const-string v27, "data"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    invoke-static {v15}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 359
    .local v22, "requestBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "JSON request: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 360
    const-string v27, "https://android.googleapis.com/gcm/send"

    const-string v28, "application/json"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gcm/server/Sender;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 362
    .local v11, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v26

    .line 364
    .local v26, "status":I
    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 365
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/gcm/server/Sender;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    .line 366
    .local v23, "responseBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "JSON error response: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 367
    new-instance v27, Lcom/google/android/gcm/server/InvalidRequestException;

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/gcm/server/InvalidRequestException;-><init>(ILjava/lang/String;)V

    throw v27

    .line 369
    .end local v23    # "responseBody":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/gcm/server/Sender;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    .line 370
    .restart local v23    # "responseBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "JSON response: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 371
    new-instance v20, Lorg/json/simple/parser/JSONParser;

    invoke-direct/range {v20 .. v20}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 374
    .local v20, "parser":Lorg/json/simple/parser/JSONParser;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/simple/JSONObject;

    .line 375
    .local v16, "jsonResponse":Lorg/json/simple/JSONObject;
    const-string v27, "success"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/gcm/server/Sender;->getNumber(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 376
    .local v5, "success":I
    const-string v27, "failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/gcm/server/Sender;->getNumber(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 377
    .local v6, "failure":I
    const-string v27, "canonical_ids"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/gcm/server/Sender;->getNumber(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 378
    .local v7, "canonicalIds":I
    const-string v27, "multicast_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/gcm/server/Sender;->getNumber(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 379
    .local v8, "multicastId":J
    new-instance v4, Lcom/google/android/gcm/server/MulticastResult$Builder;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gcm/server/MulticastResult$Builder;-><init>(IIIJ)V

    .line 382
    .local v4, "builder":Lcom/google/android/gcm/server/MulticastResult$Builder;
    const-string v27, "results"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 384
    .local v25, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v25, :cond_3

    .line 385
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 386
    .local v17, "jsonResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v27, "message_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 387
    .local v18, "messageId":Ljava/lang/String;
    const-string v27, "registration_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 389
    .local v10, "canonicalRegId":Ljava/lang/String;
    const-string v27, "error"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 390
    .local v13, "error":Ljava/lang/String;
    new-instance v27, Lcom/google/android/gcm/server/Result$Builder;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/gcm/server/Result$Builder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gcm/server/Result$Builder;->messageId(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/google/android/gcm/server/Result$Builder;->canonicalRegistrationId(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/google/android/gcm/server/Result$Builder;->errorCode(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gcm/server/Result$Builder;->build()Lcom/google/android/gcm/server/Result;

    move-result-object v24

    .line 395
    .local v24, "result":Lcom/google/android/gcm/server/Result;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/google/android/gcm/server/MulticastResult$Builder;->addResult(Lcom/google/android/gcm/server/Result;)Lcom/google/android/gcm/server/MulticastResult$Builder;
    :try_end_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gcm/server/Sender$CustomParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 400
    .end local v4    # "builder":Lcom/google/android/gcm/server/MulticastResult$Builder;
    .end local v5    # "success":I
    .end local v6    # "failure":I
    .end local v7    # "canonicalIds":I
    .end local v8    # "multicastId":J
    .end local v10    # "canonicalRegId":Ljava/lang/String;
    .end local v13    # "error":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "jsonResponse":Lorg/json/simple/JSONObject;
    .end local v17    # "jsonResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "messageId":Ljava/lang/String;
    .end local v24    # "result":Lcom/google/android/gcm/server/Result;
    .end local v25    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v12

    .line 401
    .local v12, "e":Lorg/json/simple/parser/ParseException;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/google/android/gcm/server/Sender;->newIoException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v27

    throw v27

    .line 398
    .end local v12    # "e":Lorg/json/simple/parser/ParseException;
    .restart local v4    # "builder":Lcom/google/android/gcm/server/MulticastResult$Builder;
    .restart local v5    # "success":I
    .restart local v6    # "failure":I
    .restart local v7    # "canonicalIds":I
    .restart local v8    # "multicastId":J
    .restart local v16    # "jsonResponse":Lorg/json/simple/JSONObject;
    .restart local v25    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gcm/server/MulticastResult$Builder;->build()Lcom/google/android/gcm/server/MulticastResult;
    :try_end_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gcm/server/Sender$CustomParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 399
    .local v19, "multicastResult":Lcom/google/android/gcm/server/MulticastResult;
    return-object v19

    .line 402
    .end local v4    # "builder":Lcom/google/android/gcm/server/MulticastResult$Builder;
    .end local v5    # "success":I
    .end local v6    # "failure":I
    .end local v7    # "canonicalIds":I
    .end local v8    # "multicastId":J
    .end local v16    # "jsonResponse":Lorg/json/simple/JSONObject;
    .end local v19    # "multicastResult":Lcom/google/android/gcm/server/MulticastResult;
    .end local v25    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_1
    move-exception v12

    .line 403
    .local v12, "e":Lcom/google/android/gcm/server/Sender$CustomParserException;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/google/android/gcm/server/Sender;->newIoException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v27

    throw v27
.end method

.method public sendNoRetry(Lcom/google/android/gcm/server/Message;Ljava/lang/String;)Lcom/google/android/gcm/server/Result;
    .locals 22
    .param p1, "message"    # Lcom/google/android/gcm/server/Message;
    .param p2, "registrationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v19, "registration_id"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gcm/server/Sender;->newBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    .local v2, "body":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->isDelayWhileIdle()Ljava/lang/Boolean;

    move-result-object v6

    .line 152
    .local v6, "delayWhileIdle":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    .line 153
    const-string v20, "delay_while_idle"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "1"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/google/android/gcm/server/Sender;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->getCollapseKey()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "collapseKey":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 157
    const-string v19, "collapse_key"

    move-object/from16 v0, v19

    invoke-static {v2, v0, v4}, Lcom/google/android/gcm/server/Sender;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->getTimeToLive()Ljava/lang/Integer;

    move-result-object v16

    .line 160
    .local v16, "timeToLive":Ljava/lang/Integer;
    if-eqz v16, :cond_2

    .line 161
    const-string v19, "time_to_live"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v1}, Lcom/google/android/gcm/server/Sender;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gcm/server/Message;->getData()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 164
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 166
    .local v18, "value":Ljava/lang/String;
    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v9, v0}, Lcom/google/android/gcm/server/Sender;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v4    # "collapseKey":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "timeToLive":Ljava/lang/Integer;
    .end local v18    # "value":Ljava/lang/String;
    :cond_3
    const-string v19, "0"

    goto :goto_0

    .line 168
    .restart local v4    # "collapseKey":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v16    # "timeToLive":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "requestBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Request body: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 170
    const-string v19, "https://android.googleapis.com/gcm/send"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/google/android/gcm/server/Sender;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 171
    .local v5, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 172
    .local v15, "status":I
    const/16 v19, 0x1f7

    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v20, "GCM service is unavailable"

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 174
    const/4 v14, 0x0

    .line 220
    :goto_2
    return-object v14

    .line 176
    :cond_5
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v15, v0, :cond_6

    .line 177
    new-instance v19, Lcom/google/android/gcm/server/InvalidRequestException;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lcom/google/android/gcm/server/InvalidRequestException;-><init>(I)V

    throw v19

    .line 180
    :cond_6
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_7

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 186
    :cond_7
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Received empty response from GCM service."

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v19

    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    throw v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    .end local v11    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v19

    .line 188
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/gcm/server/Sender;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "responseParts":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v17, v13, v19

    .line 190
    .local v17, "token":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v18, v13, v19

    .line 191
    .restart local v18    # "value":Ljava/lang/String;
    const-string v19, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 192
    new-instance v19, Lcom/google/android/gcm/server/Result$Builder;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gcm/server/Result$Builder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gcm/server/Result$Builder;->messageId(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;

    move-result-object v3

    .line 194
    .local v3, "builder":Lcom/google/android/gcm/server/Result$Builder;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 195
    if-eqz v10, :cond_9

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/gcm/server/Sender;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 197
    const/16 v19, 0x0

    aget-object v17, v13, v19

    .line 198
    const/16 v19, 0x1

    aget-object v18, v13, v19

    .line 199
    const-string v19, "registration_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 200
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/gcm/server/Result$Builder;->canonicalRegistrationId(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;

    .line 206
    :cond_9
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gcm/server/Result$Builder;->build()Lcom/google/android/gcm/server/Result;

    move-result-object v14

    .line 207
    .local v14, "result":Lcom/google/android/gcm/server/Result;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    sget-object v20, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Message created succesfully ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    :cond_a
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 202
    .end local v14    # "result":Lcom/google/android/gcm/server/Result;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gcm/server/Sender;->logger:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received invalid second line from GCM: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_3

    .line 211
    .end local v3    # "builder":Lcom/google/android/gcm/server/Result$Builder;
    :cond_c
    const-string v19, "Error"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 212
    new-instance v19, Lcom/google/android/gcm/server/Result$Builder;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gcm/server/Result$Builder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gcm/server/Result$Builder;->errorCode(Ljava/lang/String;)Lcom/google/android/gcm/server/Result$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gcm/server/Result$Builder;->build()Lcom/google/android/gcm/server/Result;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 217
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 214
    :cond_d
    :try_start_7
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received invalid response from GCM: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method sleep(J)V
    .locals 2
    .param p1, "millis"    # J

    .prologue
    .line 560
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
