.class Lcom/parse/ParsePushRouter$3;
.super Lcom/parse/BackgroundTask;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushRouter;->routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$channel:Ljava/lang/String;

.field private final synthetic val$service:Lcom/parse/PushService;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lcom/parse/PushService;)V
    .locals 0

    .prologue
    .line 1
    .local p1, "$anonymous0":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<Ljava/lang/Boolean;>;"
    iput-object p2, p0, Lcom/parse/ParsePushRouter$3;->val$channel:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParsePushRouter$3;->val$service:Lcom/parse/PushService;

    .line 572
    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v1, Lcom/parse/ParseInstallation;

    invoke-direct {v1}, Lcom/parse/ParseInstallation;-><init>()V

    .line 578
    .local v1, "installation":Lcom/parse/ParseInstallation;
    const-string v2, "com.parse.ParsePushRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refetching installation to check for out of sync channel subscription in channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/parse/ParsePushRouter$3;->val$channel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    invoke-static {v2, v3}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->fetch()Lcom/parse/ParseObject;

    .line 581
    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 582
    .local v0, "fromInstallation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v3

    .line 583
    :try_start_0
    sget-object v2, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 584
    sget-object v2, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 585
    iget-object v2, p0, Lcom/parse/ParsePushRouter$3;->val$service:Lcom/parse/PushService;

    invoke-static {v2}, Lcom/parse/ParsePushRouter;->access$0(Landroid/content/Context;)V

    .line 582
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    iget-object v2, p0, Lcom/parse/ParsePushRouter$3;->val$service:Lcom/parse/PushService;

    iget-object v3, p0, Lcom/parse/ParsePushRouter$3;->val$channel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/parse/ParsePushRouter;->access$1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 582
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParsePushRouter$3;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
