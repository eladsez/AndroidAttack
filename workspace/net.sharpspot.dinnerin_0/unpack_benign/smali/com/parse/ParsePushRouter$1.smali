.class Lcom/parse/ParsePushRouter$1;
.super Lcom/parse/SaveCallback;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$installation:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/parse/ParsePushRouter$1;->val$installation:Lcom/parse/ParseInstallation;

    .line 98
    invoke-direct {p0}, Lcom/parse/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 5
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v1, "com.parse.ParsePushRouter"

    const-string v2, "Failed to save installation eventually"

    invoke-static {v1, v2, p1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 106
    sget-object v2, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v2

    .line 107
    :try_start_0
    sget-object v1, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 108
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$installation:Lcom/parse/ParseInstallation;

    const-string v3, "channels"

    invoke-virtual {v1, v3}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "fromInstallation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/parse/ParsePushRouter;->hasRoutes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const-string v1, "com.parse.ParsePushRouter"

    const-string v2, "Shutting down push service. No remaining channels"

    invoke-static {v1, v2}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/parse/PushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 116
    :cond_1
    new-instance v1, Lcom/parse/ParsePushRouter$1$1;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/parse/ParsePushRouter$1$1;-><init>(Lcom/parse/ParsePushRouter$1;Lcom/parse/ParseCallback;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 122
    invoke-virtual {v1, v2}, Lcom/parse/ParsePushRouter$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 106
    .end local v0    # "fromInstallation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
