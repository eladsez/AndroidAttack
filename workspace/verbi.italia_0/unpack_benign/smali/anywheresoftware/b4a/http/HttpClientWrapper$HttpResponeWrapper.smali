.class public Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "HttpResponse"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/http/HttpClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpResponeWrapper"
.end annotation


# instance fields
.field private parent:Lanywheresoftware/b4a/http/HttpClientWrapper;

.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Lanywheresoftware/b4a/http/HttpClientWrapper;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->innerInitialize(Lanywheresoftware/b4a/http/HttpClientWrapper;)V

    return-void
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method static synthetic access$3(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;)Lanywheresoftware/b4a/http/HttpClientWrapper;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->parent:Lanywheresoftware/b4a/http/HttpClientWrapper;

    return-object v0
.end method

.method static convertHeaders([Lorg/apache/http/Header;)Lanywheresoftware/b4a/objects/collections/Map;
    .locals 7
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 506
    new-instance v3, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v3}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .line 507
    .local v3, "m":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 508
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 518
    return-object v3

    .line 508
    :cond_0
    aget-object v0, p0, v5

    .line 509
    .local v0, "h":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lanywheresoftware/b4a/objects/collections/Map;->Get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 510
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 511
    new-instance v2, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 512
    .local v2, "ll":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 513
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/List;

    .line 514
    .restart local v1    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .end local v2    # "ll":Lanywheresoftware/b4a/objects/collections/List;
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private innerInitialize(Lanywheresoftware/b4a/http/HttpClientWrapper;)V
    .locals 0
    .param p1, "parent"    # Lanywheresoftware/b4a/http/HttpClientWrapper;

    .prologue
    .line 471
    iput-object p1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->parent:Lanywheresoftware/b4a/http/HttpClientWrapper;

    .line 472
    return-void
.end method


# virtual methods
.method public GetAsynchronously(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/io/OutputStream;ZI)Z
    .locals 7
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "Output"    # Ljava/io/OutputStream;
    .param p4, "CloseOutput"    # Z
    .param p5, "TaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->parent:Lanywheresoftware/b4a/http/HttpClientWrapper;

    invoke-static {v1, p5}, Lanywheresoftware/b4a/BA;->isTaskRunning(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->Release()V

    .line 578
    const/4 v1, 0x0

    .line 619
    :goto_0
    return v1

    .line 581
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper$1;-><init>(Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;Ljava/io/OutputStream;ZLanywheresoftware/b4a/BA;ILjava/lang/String;)V

    .line 618
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->parent:Lanywheresoftware/b4a/http/HttpClientWrapper;

    invoke-static {v0, v1, p5}, Lanywheresoftware/b4a/BA;->submitRunnable(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;

    .line 619
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public GetHeaders()Lanywheresoftware/b4a/objects/collections/Map;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->convertHeaders([Lorg/apache/http/Header;)Lanywheresoftware/b4a/objects/collections/Map;

    move-result-object v0

    return-object v0
.end method

.method public GetInputStream()Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;-><init>()V

    .line 479
    .local v0, "isw":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 480
    return-object v0
.end method

.method public GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "DefaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, ""

    .line 489
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 532
    :cond_0
    return-void
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method
