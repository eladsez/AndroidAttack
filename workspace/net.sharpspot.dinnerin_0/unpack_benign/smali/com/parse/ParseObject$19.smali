.class Lcom/parse/ParseObject$19;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteAsync(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Lcom/parse/ParseCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/parse/ParseObject$19;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$19;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseCommand;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/parse/ParseObject$19;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$19;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1358
    iget-object v0, p0, Lcom/parse/ParseObject$19;->this$0:Lcom/parse/ParseObject;

    invoke-static {v0}, Lcom/parse/ParseObject;->access$500(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1359
    const/4 v0, 0x0

    monitor-exit v1

    .line 1361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$19;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/ParseObject$19;->val$sessionToken:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/parse/ParseObject$19;->call()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method
