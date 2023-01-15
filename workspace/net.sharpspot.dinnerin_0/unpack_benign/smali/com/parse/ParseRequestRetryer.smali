.class Lcom/parse/ParseRequestRetryer;
.super Ljava/lang/Object;
.source "ParseRequestRetryer.java"


# static fields
.field public static testClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private attemptsMade:I

.field private client:Lorg/apache/http/client/HttpClient;

.field private delay:J

.field private maxAttempts:I

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRequestRetryer;->testClient:Lorg/apache/http/client/HttpClient;

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;JI)V
    .locals 4
    .param p1, "newRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "initialDelay"    # J
    .param p4, "newMaxAttempts"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    .line 35
    sget-object v0, Lcom/parse/ParseRequestRetryer;->testClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/parse/ParseRequestRetryer;->testClient:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    .line 37
    const-wide/16 p2, 0x1

    .line 43
    :goto_0
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 44
    iput p4, p0, Lcom/parse/ParseRequestRetryer;->maxAttempts:I

    .line 45
    long-to-double v0, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    .line 46
    return-void

    .line 39
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    .line 40
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/ParseRequestRetryer;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    return v0
.end method

.method static synthetic access$3(Lcom/parse/ParseRequestRetryer;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    return-void
.end method

.method static synthetic access$4(Lcom/parse/ParseRequestRetryer;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/parse/ParseRequestRetryer;->maxAttempts:I

    return v0
.end method

.method static synthetic access$5(Lcom/parse/ParseRequestRetryer;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/parse/ParseRequestRetryer;J)V
    .locals 0

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    return-void
.end method

.method private sendOneRequestAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lcom/parse/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/parse/ParseRequestRetryer$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseRequestRetryer$1;-><init>(Lcom/parse/ParseRequestRetryer;Lcom/parse/ProgressCallback;)V

    .line 105
    sget-object v1, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    invoke-static {v0, v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 151
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
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

    .line 151
    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public goAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
    .locals 2
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lcom/parse/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/parse/ParseRequestRetryer;->sendOneRequestAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/parse/ParseRequestRetryer$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseRequestRetryer$2;-><init>(Lcom/parse/ParseRequestRetryer;Lcom/parse/ProgressCallback;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
