.class public Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "HttpRequest"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/http/HttpClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpUriRequestWrapper"
.end annotation


# instance fields
.field private POST:Z

.field private entity:Lorg/apache/http/entity/AbstractHttpEntity;

.field public req:Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sharedInit()V
    .locals 1

    .prologue
    .line 417
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->setTimeout(I)V

    .line 418
    return-void
.end method


# virtual methods
.method public InitializeDelete(Ljava/lang/String;)V
    .locals 1
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 360
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 361
    return-void
.end method

.method public InitializeGet(Ljava/lang/String;)V
    .locals 1
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 344
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 345
    return-void
.end method

.method public InitializeHead(Ljava/lang/String;)V
    .locals 1
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 350
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 352
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 353
    return-void
.end method

.method public InitializePost(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "InputStream"    # Ljava/io/InputStream;
    .param p3, "Length"    # I

    .prologue
    .line 368
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 370
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v2, p3

    invoke-direct {v1, p2, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 371
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 372
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 374
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 375
    return-void
.end method

.method public InitializePost2(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "Data"    # [B

    .prologue
    .line 395
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 397
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 398
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 399
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 401
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 402
    return-void
.end method

.method public InitializePut(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "InputStream"    # Ljava/io/InputStream;
    .param p3, "Length"    # I

    .prologue
    .line 381
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "post":Lorg/apache/http/client/methods/HttpPut;
    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 383
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v2, p3

    invoke-direct {v1, p2, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 384
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 385
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 387
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 388
    return-void
.end method

.method public InitializePut2(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "Data"    # [B

    .prologue
    .line 408
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "post":Lorg/apache/http/client/methods/HttpPut;
    iput-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 410
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 411
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 412
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    .line 414
    invoke-direct {p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->sharedInit()V

    .line 415
    return-void
.end method

.method public RemoveHeaders(Ljava/lang/String;)V
    .locals 1
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpRequestBase;->removeHeaders(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public SetContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "Encoding"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only Post / Put requests support this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public SetContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "ContentType"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-boolean v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->POST:Z

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only Post / Put requests support this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->entity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public SetHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "Timeout"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 443
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;->req:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 444
    return-void
.end method
