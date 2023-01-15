.class Lcom/parse/ParseUser$10$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$10;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$1:Lcom/parse/ParseUser$10;

.field private final synthetic val$authData:Lorg/json/JSONObject;

.field private final synthetic val$authType:Ljava/lang/String;

.field private final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$10;Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$10$1;->this$1:Lcom/parse/ParseUser$10;

    iput-object p2, p0, Lcom/parse/ParseUser$10$1;->val$user:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$10$1;->val$authType:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseUser$10$1;->val$authData:Lorg/json/JSONObject;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
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
    .line 984
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$10$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$10$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$10(Lcom/parse/ParseUser;)V

    .line 988
    iget-object v0, p0, Lcom/parse/ParseUser$10$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$6(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$10$1;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$10$1;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    iget-object v0, p0, Lcom/parse/ParseUser$10$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$7(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$10$1;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/parse/ParseUser$10$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0, p1}, Lcom/parse/ParseUser;->access$11(Lcom/parse/ParseUser;Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 984
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$10$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
