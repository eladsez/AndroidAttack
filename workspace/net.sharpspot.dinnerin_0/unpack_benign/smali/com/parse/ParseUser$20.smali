.class Lcom/parse/ParseUser$20;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field private final synthetic val$authType:Ljava/lang/String;

.field private final synthetic val$oldAnonymousData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$20;->val$oldAnonymousData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/ParseUser$20;->val$authType:Ljava/lang/String;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1144
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$20;->val$oldAnonymousData:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$12(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 1146
    monitor-exit v1

    .line 1149
    :goto_0
    return-object p1

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$20;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$20;->val$authType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$9(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 1149
    monitor-exit v1

    goto :goto_0

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lcom/parse/Task;

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$20;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
