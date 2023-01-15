.class Lcom/parse/ParseCommand;
.super Ljava/lang/Object;
.source "ParseCommand.java"


# static fields
.field private static CONNECTION_TIMEOUT:I

.field private static INITIAL_DELAY:I

.field private static SOCKET_TIMEOUT:I

.field static final networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field static testClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private attemptsMade:I

.field private client:Lorg/apache/http/client/HttpClient;

.field private currentTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field private delay:J

.field private localId:Ljava/lang/String;

.field op:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private retryEnabled:Z

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 46
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseCommand;->testClient:Lorg/apache/http/client/HttpClient;

    .line 68
    sput v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    .line 69
    sput v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    .line 70
    const/16 v0, 0x3e8

    sput v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "theOp"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 62
    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommand;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 75
    iput-object p2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    .line 77
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 78
    .local v0, "httpParameters":Lorg/apache/http/params/HttpParams;
    sget v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    sget v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    sget-object v1, Lcom/parse/ParseCommand;->testClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/parse/ParseCommand;->testClient:Lorg/apache/http/client/HttpClient;

    :goto_0
    iput-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 82
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 62
    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommand;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    const-string v1, "op"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 90
    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 91
    const-string v1, "localId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 93
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 94
    .local v0, "httpParameters":Lorg/apache/http/params/HttpParams;
    sget v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 95
    sget v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 97
    sget-object v1, Lcom/parse/ParseCommand;->testClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/parse/ParseCommand;->testClient:Lorg/apache/http/client/HttpClient;

    :goto_0
    iput-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 98
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 99
    const-string v1, "session_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "session_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    .line 104
    :goto_1
    return-void

    .line 97
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/parse/ParseCommand;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$1(Lcom/parse/ParseCommand;)Lcom/parse/Task;
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/parse/ParseCommand;->sendRequestWithRetriesAsync()Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/ParseCommand;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parse/ParseCommand;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$3(Lcom/parse/ParseCommand;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    return v0
.end method

.method static synthetic access$4(Lcom/parse/ParseCommand;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    return-void
.end method

.method static synthetic access$5(Lcom/parse/ParseCommand;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    return v0
.end method

.method static synthetic access$6(Lcom/parse/ParseCommand;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/parse/ParseCommand;->calculateNextDelay()V

    return-void
.end method

.method static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 8
    .param p0, "stringer"    # Lorg/json/JSONStringer;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    instance-of v6, p1, Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-object v5, p1

    .line 208
    check-cast v5, Lorg/json/JSONObject;

    .line 209
    .local v5, "object":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 210
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 214
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 216
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 221
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 236
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 212
    .restart local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "object":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 218
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 225
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_2
    instance-of v6, p1, Lorg/json/JSONArray;

    if-eqz v6, :cond_4

    move-object v0, p1

    .line 226
    check-cast v0, Lorg/json/JSONArray;

    .line 227
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 231
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 235
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private calculateNextDelay()V
    .locals 4

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 450
    return-void
.end method

.method private static getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "container"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    instance-of v5, p0, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 477
    check-cast v4, Lorg/json/JSONObject;

    .line 478
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "Pointer"

    const-string v6, "__type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "container":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 483
    .restart local v4    # "object":Lorg/json/JSONObject;
    .restart local p0    # "container":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 484
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 490
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_2
    instance-of v5, p0, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v0, p0

    .line 491
    check-cast v0, Lorg/json/JSONArray;

    .line 492
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 493
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 485
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .restart local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "object":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 486
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private maybeSetupHttpProxy()V
    .locals 6

    .prologue
    .line 403
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "host":Ljava/lang/String;
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "portString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 409
    .local v1, "port":I
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "http"

    invoke-direct {v3, v0, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    iget-object v4, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method private sendRequestAsync(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lcom/parse/Task;
    .locals 2
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "post"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpPost;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/parse/ParseCommand;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lcom/parse/Task;->cancelled()Lcom/parse/Task;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseCommand$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseCommand$6;-><init>(Lcom/parse/ParseCommand;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)V

    .line 445
    sget-object v1, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 417
    invoke-static {v0, v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private sendRequestWithRetriesAsync()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseCommand;->sendRequestAsync(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lcom/parse/Task;

    move-result-object v0

    .line 372
    new-instance v1, Lcom/parse/ParseCommand$5;

    invoke-direct {v1, p0}, Lcom/parse/ParseCommand$5;-><init>(Lcom/parse/ParseCommand;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static setInitialDelay(D)V
    .locals 2
    .param p0, "seconds"    # D

    .prologue
    .line 461
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    sput v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    .line 462
    return-void
.end method

.method static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 199
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-static {v0, p0}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 465
    iget-object v1, p0, Lcom/parse/ParseCommand;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/Task$TaskCompletionSource;

    .line 466
    .local v0, "curr":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 472
    :cond_1
    return-void
.end method

.method connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 245
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public enableRetrying()V
    .locals 6

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 457
    sget v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    int-to-long v0, v0

    sget v2, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 458
    return-void
.end method

.method getCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/parse/ParseCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseCommand."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 183
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public maybeChangeServerOperation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 507
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "objectId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 509
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 511
    iget-object v2, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 512
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 513
    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    const-string v3, "create"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    const-string v2, "update"

    iput-object v2, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 521
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "objectId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method performAsync()Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommand;->performAsync(Z)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method performAsync(Z)Lcom/parse/Task;
    .locals 3
    .param p1, "saveToCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 318
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 319
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    iget-object v1, p0, Lcom/parse/ParseCommand;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 320
    new-instance v1, Lcom/parse/ParseCommand$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseCommand$1;-><init>(Lcom/parse/ParseCommand;)V

    invoke-static {v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v1

    .line 330
    new-instance v2, Lcom/parse/ParseCommand$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseCommand$2;-><init>(Lcom/parse/ParseCommand;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 334
    new-instance v2, Lcom/parse/ParseCommand$3;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseCommand$3;-><init>(Lcom/parse/ParseCommand;Z)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 352
    new-instance v2, Lcom/parse/ParseCommand$4;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommand$4;-><init>(Lcom/parse/ParseCommand;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 364
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method preparePost()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x6d

    .line 251
    iget-object v7, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 252
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v3, "fullParams":Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 261
    const-string v7, "v"

    const-string v8, "a1.2.2"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v7, "iid"

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v7, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v7, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 274
    const-string v7, "session_token"

    iget-object v8, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    const-string v7, "%s/%s/%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "url":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 285
    :try_start_1
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF8"

    invoke-direct {v2, v7, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v2, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v7, "application/json"

    invoke-virtual {v2, v7}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 287
    iget-object v7, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v7, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    sget-object v7, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    sget-object v8, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v0, "consumer":Lcom/parse/signpost/OAuthConsumer;
    const/4 v7, 0x0

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :try_start_2
    iget-object v7, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v7}, Lcom/parse/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_2
    .catch Lcom/parse/signpost/exception/OAuthMessageSignerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/parse/signpost/exception/OAuthCommunicationException; {:try_start_2 .. :try_end_2} :catch_4

    .line 303
    return-void

    .line 255
    .end local v0    # "consumer":Lcom/parse/signpost/OAuthConsumer;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v6    # "url":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 256
    .local v4, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 277
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 288
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 296
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "consumer":Lcom/parse/signpost/OAuthConsumer;
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v1

    .line 297
    .local v1, "e":Lcom/parse/signpost/exception/OAuthMessageSignerException;
    new-instance v7, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/signpost/exception/OAuthMessageSignerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v11, v8}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 298
    .end local v1    # "e":Lcom/parse/signpost/exception/OAuthMessageSignerException;
    :catch_3
    move-exception v1

    .line 299
    .local v1, "e":Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    new-instance v7, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v11, v8}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 300
    .end local v1    # "e":Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    :catch_4
    move-exception v1

    .line 301
    .local v1, "e":Lcom/parse/signpost/exception/OAuthCommunicationException;
    new-instance v7, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/signpost/exception/OAuthCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v11, v8}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method put(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;J)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseLocalIds()V
    .locals 6

    .prologue
    .line 580
    iget-object v4, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 581
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V

    .line 585
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 586
    .local v0, "data":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v2, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v2}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 588
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 595
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :goto_1
    return-void

    .line 588
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 589
    .local v3, "pointer":Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    .local v1, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v3    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public resolveLocalIds()V
    .locals 7

    .prologue
    .line 531
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    .local v0, "data":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v2, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v2}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 534
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->maybeChangeServerOperation()V

    .line 549
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :goto_1
    return-void

    .line 534
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 535
    .local v4, "pointer":Lorg/json/JSONObject;
    const-string v6, "localId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 536
    .local v1, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "objectId":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 538
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 539
    const-string v6, "Tried to serialize a command referencing a new, unsaved object."

    .line 538
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 546
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v4    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 541
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v1    # "localId":Ljava/lang/String;
    .restart local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v3    # "objectId":Ljava/lang/String;
    .restart local v4    # "pointer":Lorg/json/JSONObject;
    :cond_1
    const-string v6, "objectId"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v6, "localId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public retainLocalIds()V
    .locals 6

    .prologue
    .line 557
    iget-object v4, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 558
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V

    .line 562
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "data":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v2, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v2}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 565
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 572
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :goto_1
    return-void

    .line 565
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 566
    .local v3, "pointer":Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 567
    .local v1, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v3    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "theLocalId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "theOp"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 149
    return-void
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v0, "answer":Lorg/json/JSONObject;
    const-string v2, "op"

    iget-object v3, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "params"

    iget-object v3, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    iget-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 169
    const-string v2, "localId"

    iget-object v3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_0
    const-string v3, "session_token"

    iget-object v2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    return-object v0

    .line 171
    :cond_1
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v0    # "answer":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
