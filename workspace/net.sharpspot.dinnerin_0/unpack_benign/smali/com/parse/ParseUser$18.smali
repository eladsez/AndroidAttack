.class Lcom/parse/ParseUser$18;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field private final synthetic val$authData:Lorg/json/JSONObject;

.field private final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$18;->val$authData:Lorg/json/JSONObject;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseUser$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$6(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$18;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1129
    iget-object v0, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$7(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$18;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    iget-object v0, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$10(Lcom/parse/ParseUser;)V

    .line 1133
    iget-object v0, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parse/ParseUser;->dirty:Z

    .line 1134
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
