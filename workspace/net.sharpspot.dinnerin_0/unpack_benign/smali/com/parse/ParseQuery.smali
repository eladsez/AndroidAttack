.class public Lcom/parse/ParseQuery;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQuery$CachePolicy;,
        Lcom/parse/ParseQuery$CommandDelegate;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$parse$ParseQuery$CachePolicy:[I = null

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseQuery"


# instance fields
.field private cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private currentCommand:Lcom/parse/ParseCommand;

.field private extraOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private include:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Ljava/lang/Boolean;

.field private limit:I

.field private maxCacheAge:J

.field private objectsParsed:J

.field private order:Ljava/lang/String;

.field private queryReceived:J

.field private querySent:J

.field private queryStart:J

.field private skip:I

.field private trace:Z

.field private where:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$parse$ParseQuery$CachePolicy()[I
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/parse/ParseQuery;->$SWITCH_TABLE$com$parse$ParseQuery$CachePolicy:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/ParseQuery$CachePolicy;->values()[Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ELSE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/parse/ParseQuery;->$SWITCH_TABLE$com$parse$ParseQuery$CachePolicy:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 96
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 97
    iput-object v1, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    .line 139
    iput-object p1, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 141
    iput v2, p0, Lcom/parse/ParseQuery;->skip:I

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    .line 144
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 145
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 147
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method static synthetic access$0(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/parse/ParseQuery;->finishedRunning()V

    return-void
.end method

.method static synthetic access$10(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/ParseQuery;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/parse/ParseQuery;->countFromNetworkAsync()Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/parse/ParseQuery;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/parse/ParseQuery;->countFromCache()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/parse/ParseQuery;Z)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findFromNetworkAsync(Z)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/parse/ParseQuery;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/parse/ParseQuery;->findFromCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    return-object v0
.end method

.method static synthetic access$7(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method static synthetic access$8(Lcom/parse/ParseQuery;J)V
    .locals 0

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/parse/ParseQuery;->querySent:J

    return-void
.end method

.method static synthetic access$9(Lcom/parse/ParseQuery;J)V
    .locals 0

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/parse/ParseQuery;->queryReceived:J

    return-void
.end method

.method private addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 769
    const/4 v2, 0x0

    .line 771
    .local v2, "whereValue":Lorg/json/JSONObject;
    invoke-static {p3}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 774
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 776
    .local v1, "existingValue":Ljava/lang/Object;
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 777
    check-cast v2, Lorg/json/JSONObject;

    .line 780
    .end local v1    # "existingValue":Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    .line 781
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "whereValue":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 785
    .restart local v2    # "whereValue":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkIfRunning()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 163
    return-void
.end method

.method private checkIfRunning(Z)V
    .locals 3
    .param p1, "grabLock"    # Z

    .prologue
    .line 166
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    .line 169
    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    .line 168
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 166
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return-void
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 726
    invoke-static {}, Lcom/parse/Parse;->clearCacheDir()V

    .line 727
    return-void
.end method

.method private convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 12
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "answer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    const-string v7, "results"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 311
    .local v5, "results":Lorg/json/JSONArray;
    if-nez v5, :cond_2

    .line 312
    const-string v7, "com.parse.ParseQuery"

    const-string v8, "null results in find response"

    invoke-static {v7, v8}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/parse/ParseQuery;->objectsParsed:J

    .line 326
    const-string v7, "trace"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 327
    const-string v7, "trace"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 329
    .local v6, "serverTrace":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Query pre-processing took "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/parse/ParseQuery;->querySent:J

    iget-wide v10, p0, Lcom/parse/ParseQuery;->queryStart:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " milliseconds\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "fullTrace":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "Client side parsing took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/parse/ParseQuery;->objectsParsed:J

    iget-wide v10, p0, Lcom/parse/ParseQuery;->queryReceived:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " millisecond\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    const-string v7, "ParseQuery"

    invoke-static {v7, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v1    # "fullTrace":Ljava/lang/String;
    .end local v6    # "serverTrace":Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 314
    :cond_2
    const-string v7, "className"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "resultClassName":Ljava/lang/String;
    const-string v7, ""

    if-ne v4, v7, :cond_3

    .line 316
    iget-object v4, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 318
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 319
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v3

    .line 320
    .local v3, "object":Lcom/parse/ParseObject;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;)V

    .line 321
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private countFromCache()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x78

    .line 558
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/parse/ParseQuery;->makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "cacheKey":Ljava/lang/String;
    iget-wide v4, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v0, v4, v5}, Lcom/parse/Parse;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, "cached":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 561
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "results not cached"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 563
    :cond_0
    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 564
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains the wrong datatype"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, v1

    .line 566
    check-cast v3, Lorg/json/JSONObject;

    .line 568
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "count"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains corrupted json"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private countFromNetworkAsync()Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 657
    .local v0, "caching":Z
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 658
    iget-object v1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v1, v0}, Lcom/parse/ParseCommand;->performAsync(Z)Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseQuery$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$10;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    return-object v1

    .line 655
    .end local v0    # "caching":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;
    .locals 2
    .param p1, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/parse/ParseQuery$4;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$4;-><init>(Lcom/parse/ParseQuery;)V

    .line 397
    .local v0, "callbacks":Lcom/parse/ParseQuery$CommandDelegate;, "Lcom/parse/ParseQuery$CommandDelegate<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method private findFromCache()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x78

    .line 533
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "cacheKey":Ljava/lang/String;
    iget-wide v4, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v0, v4, v5}, Lcom/parse/Parse;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 535
    .local v1, "cached":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 536
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "results not cached"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 538
    :cond_0
    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 539
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains the wrong datatype"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, v1

    .line 541
    check-cast v3, Lorg/json/JSONObject;

    .line 543
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 544
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains corrupted json"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private findFromNetworkAsync(Z)Lcom/parse/Task;
    .locals 2
    .param p1, "shouldRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 465
    new-instance v0, Lcom/parse/ParseQuery$6;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$6;-><init>(Lcom/parse/ParseQuery;Z)V

    invoke-static {v0}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/parse/ParseQuery$7;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$7;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    .line 465
    return-object v0
.end method

.method private findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;
    .locals 2
    .param p1, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lcom/parse/ParseQuery$5;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$5;-><init>(Lcom/parse/ParseQuery;)V

    .line 419
    .local v0, "callbacks":Lcom/parse/ParseQuery$CommandDelegate;, "Lcom/parse/ParseQuery$CommandDelegate<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method private finishRunning(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<TT;>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$1;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {p1, v0}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private finishedRunning()V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 178
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 177
    monitor-exit v1

    .line 181
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAsync(Ljava/lang/String;)Lcom/parse/Task;
    .locals 2
    .param p1, "theObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->skip:I

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    .line 682
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getFirstAsync()Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFirstAsync()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->setLimit(I)V

    .line 607
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->findAsync()Lcom/parse/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$9;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/parse/ParseUser;->getQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 631
    .local v0, "command":Lcom/parse/ParseCommand;
    const-string v1, "limit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V

    .line 632
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V

    .line 633
    return-object v0
.end method

.method private makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "find"

    invoke-direct {v0, v5, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v4

    .line 294
    .local v4, "params":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 296
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    return-object v0

    .line 297
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private maybeEncodeSubQueries(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    instance-of v6, p1, Lorg/json/JSONObject;

    if-nez v6, :cond_0

    .line 217
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    .line 197
    check-cast v0, Lorg/json/JSONObject;

    .line 198
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    move-object p1, v0

    .line 217
    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, "object":Ljava/lang/Object;
    instance-of v6, v3, Lcom/parse/ParseQuery;

    if-eqz v6, :cond_4

    move-object v4, v3

    .line 204
    check-cast v4, Lcom/parse/ParseQuery;

    .line 205
    .local v4, "query":Lcom/parse/ParseQuery;
    invoke-virtual {v4}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    .local v5, "realData":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 207
    const-string v6, "where"

    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    :cond_3
    const-string v6, "className"

    const-string v7, "classname"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 212
    .end local v4    # "query":Lcom/parse/ParseQuery;
    .end local v5    # "realData":Lorg/json/JSONObject;
    :cond_4
    instance-of v6, v3, Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    .line 213
    invoke-direct {p0, v3}, Lcom/parse/ParseQuery;->maybeEncodeSubQueries(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t take an or of an empty list of queries"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    iget-object v4, v4, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 119
    const-string v5, "All of the queries in an or query must be on the same class "

    .line 118
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    iget-object v0, v4, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 122
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_2
    new-instance v3, Lcom/parse/ParseQuery;

    invoke-direct {v3, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "value":Lcom/parse/ParseQuery;
    invoke-direct {v3, v2}, Lcom/parse/ParseQuery;->whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;

    move-result-object v4

    return-object v4
.end method

.method private runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;
    .locals 3
    .param p2, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$CommandDelegate",
            "<TT;>;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "c":Lcom/parse/ParseQuery$CommandDelegate;, "Lcom/parse/ParseQuery$CommandDelegate<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->$SWITCH_TABLE$com$parse$ParseQuery$CachePolicy()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cache policy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)Lcom/parse/Task;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 355
    :pswitch_1
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()Lcom/parse/Task;

    move-result-object v0

    goto :goto_0

    .line 357
    :pswitch_2
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()Lcom/parse/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$2;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)Lcom/parse/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$3;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$3;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    goto :goto_0

    .line 377
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot use the cache policy CACHE_THEN_NETWORK with find()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    const-string v1, "$or"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1262
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1263
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1267
    :goto_0
    return-object p0

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1295
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1300
    :goto_0
    return-object p0

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->cancel()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 431
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 432
    return-void
.end method

.method public clearCachedResult()V
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->count(Z)I

    move-result v0

    return v0
.end method

.method protected count(Z)I
    .locals 1
    .param p1, "needsLock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 647
    if-eqz p1, :cond_0

    .line 648
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->finishRunning(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public countInBackground(Lcom/parse/CountCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/CountCallback;

    .prologue
    .line 673
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 676
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->finishRunning(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 677
    return-void
.end method

.method public find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->findAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method findAsync()Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 402
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->finishRunning(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground(Lcom/parse/FindCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/parse/FindCallback;

    .prologue
    .line 583
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 584
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 587
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v1, v2, :cond_0

    .line 588
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v0

    .line 589
    .local v0, "findTask":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    move-result-object v0

    .line 591
    new-instance v1, Lcom/parse/ParseQuery$8;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$8;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    .line 602
    :goto_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->finishRunning(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 603
    return-void

    .line 600
    .end local v0    # "findTask":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;

    move-result-object v0

    .restart local v0    # "findTask":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "theObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->getAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getFindParams()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 222
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v4, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "classname"

    iget-object v10, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v8, "whereData":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 262
    const-string v9, "data"

    invoke-virtual {v4, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    iget v9, p0, Lcom/parse/ParseQuery;->limit:I

    if-ltz v9, :cond_0

    .line 264
    const-string v9, "limit"

    iget v10, p0, Lcom/parse/ParseQuery;->limit:I

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    :cond_0
    iget v9, p0, Lcom/parse/ParseQuery;->skip:I

    if-lez v9, :cond_1

    .line 267
    const-string v9, "skip"

    iget v10, p0, Lcom/parse/ParseQuery;->skip:I

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    :cond_1
    iget-object v9, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 270
    const-string v9, "order"

    iget-object v10, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_2
    iget-object v9, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 273
    const-string v9, "include"

    iget-object v10, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    const-string v11, ","

    invoke-static {v10, v11}, Lcom/parse/Parse;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    :cond_3
    iget-boolean v9, p0, Lcom/parse/ParseQuery;->trace:Z

    if-eqz v9, :cond_4

    .line 276
    const-string v9, "trace"

    const-string v10, "1"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :cond_4
    iget-object v9, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_d

    .line 286
    return-object v4

    .line 227
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    .local v2, "key":Ljava/lang/String;
    const-string v10, "$or"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 229
    iget-object v10, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 230
    .local v5, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 231
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 255
    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 282
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    .end local v8    # "whereData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 231
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v5    # "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    .restart local v8    # "whereData":Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseQuery;

    .line 232
    .local v6, "query":Lcom/parse/ParseQuery;
    iget v11, v6, Lcom/parse/ParseQuery;->limit:I

    if-ltz v11, :cond_7

    .line 233
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 234
    const-string v10, "Cannot have limits in sub queries of an \'OR\' query"

    .line 233
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_7
    iget v11, v6, Lcom/parse/ParseQuery;->skip:I

    if-lez v11, :cond_8

    .line 237
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 238
    const-string v10, "Cannot have skips in sub queries of an \'OR\' query"

    .line 237
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 240
    :cond_8
    iget-object v11, v6, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 241
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 242
    const-string v10, "Cannot have an order in sub queries of an \'OR\' query"

    .line 241
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 244
    :cond_9
    iget-object v11, v6, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 245
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 246
    const-string v10, "Cannot have an include in sub queries of an \'OR\' query"

    .line 245
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 248
    :cond_a
    invoke-virtual {v6}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v3

    .line 249
    .local v3, "object":Lorg/json/JSONObject;
    const-string v11, "data"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 250
    const-string v11, "data"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 252
    :cond_b
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 257
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v5    # "queries":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery;>;"
    .end local v6    # "query":Lcom/parse/ParseQuery;
    :cond_c
    iget-object v10, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/parse/ParseQuery;->maybeEncodeSubQueries(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 258
    .local v7, "value":Ljava/lang/Object;
    invoke-static {v7}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 279
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getFirst()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getFirstAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getFirstInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/GetCallback;

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getFirstAsync()Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 627
    return-void
.end method

.method public getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/GetCallback;

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->getAsync(Ljava/lang/String;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 742
    return-void
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 1328
    iget v0, p0, Lcom/parse/ParseQuery;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Lcom/parse/ParseQuery;->skip:I

    return v0
.end method

.method public hasCachedResult()Z
    .locals 4

    .prologue
    .line 708
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 708
    invoke-static {v1, v2, v3}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "raw":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1201
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    return-void
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1247
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1248
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1278
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1281
    return-object p0
.end method

.method redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    const-string v1, "redirectClassNameForKey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)V
    .locals 0
    .param p1, "newCachePolicy"    # Lcom/parse/ParseQuery$CachePolicy;

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 499
    iput-object p1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 500
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "newLimit"    # I

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1313
    iput p1, p0, Lcom/parse/ParseQuery;->limit:I

    .line 1314
    return-void
.end method

.method public setMaxCacheAge(J)V
    .locals 0
    .param p1, "maxAgeInMilliseconds"    # J

    .prologue
    .line 513
    iput-wide p1, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 514
    return-void
.end method

.method public setSkip(I)V
    .locals 0
    .param p1, "newSkip"    # I

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1340
    iput p1, p0, Lcom/parse/ParseQuery;->skip:I

    .line 1341
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .param p1, "shouldTrace"    # Z

    .prologue
    .line 1321
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 1322
    return-void
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 879
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 880
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    const-string v2, "$in"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    return-object p0

    .line 880
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 881
    .local v1, "val":Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;

    .prologue
    .line 1154
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1156
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 900
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 901
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 904
    const-string v2, "$all"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 905
    return-object p0

    .line 901
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 902
    .local v1, "val":Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1222
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1223
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .param p3, "query"    # Lcom/parse/ParseQuery;

    .prologue
    .line 975
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 977
    .local v0, "condition":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    const-string v2, "query"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    const-string v2, "$dontSelect"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    return-object p0

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "query"    # Lcom/parse/ParseQuery;

    .prologue
    .line 934
    const-string v0, "$notInQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1188
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 757
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 758
    check-cast p2, Ljava/util/Date;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/parse/Parse;->dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object p2

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1211
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 834
    const-string v0, "$gt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 864
    const-string v0, "$gte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 804
    const-string v0, "$lt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 849
    const-string v0, "$lte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 1117
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1118
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;

    .prologue
    .line 1136
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1137
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const-string v0, "$options"

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    :cond_0
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .param p3, "query"    # Lcom/parse/ParseQuery;

    .prologue
    .line 951
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 953
    .local v0, "condition":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    const-string v2, "query"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    const-string v2, "$select"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    return-object p0

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "query"    # Lcom/parse/ParseQuery;

    .prologue
    .line 919
    const-string v0, "$inQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 1028
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1010
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1013
    const-string v2, "$nin"

    invoke-direct {p0, p1, v2, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    return-object p0

    .line 1010
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1011
    .local v1, "val":Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 819
    const-string v0, "$ne"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    return-object p0
.end method

.method whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1227
    const-string v0, "$relatedTo"

    const-string v1, "object"

    invoke-static {p1}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    const-string v0, "$relatedTo"

    const-string v1, "key"

    invoke-direct {p0, v0, v1, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1229
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1172
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/parse/ParseGeoPoint;
    .param p3, "northeast"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-static {p3}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1101
    .local v1, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const-string v2, "$box"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v2, "$within"

    invoke-direct {p0, p1, v2, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 1062
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    .line 1063
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 1045
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    .line 1046
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 1079
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1080
    const-string v0, "$maxDistance"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    return-object p0
.end method
