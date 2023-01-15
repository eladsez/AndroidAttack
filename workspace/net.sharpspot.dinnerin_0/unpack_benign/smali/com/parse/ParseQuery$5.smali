.class Lcom/parse/ParseQuery$5;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseQuery$CommandDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CommandDelegate",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/parse/ParseQuery$5;)Lcom/parse/ParseQuery;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    return-object v0
.end method


# virtual methods
.method public runFromCacheAsync()Lcom/parse/Task;
    .locals 2
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
    .line 412
    new-instance v0, Lcom/parse/ParseQuery$5$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$5$1;-><init>(Lcom/parse/ParseQuery$5;)V

    .line 416
    sget-object v1, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 412
    invoke-static {v0, v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public runOnNetworkAsync(Z)Lcom/parse/Task;
    .locals 1
    .param p1, "retry"    # Z
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
    .line 408
    iget-object v0, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v0, p1}, Lcom/parse/ParseQuery;->access$4(Lcom/parse/ParseQuery;Z)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
