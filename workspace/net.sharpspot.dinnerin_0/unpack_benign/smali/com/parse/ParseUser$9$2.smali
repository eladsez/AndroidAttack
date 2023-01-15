.class Lcom/parse/ParseUser$9$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$9;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Ljava/lang/Object;",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$9;

.field private final synthetic val$authType:Ljava/lang/String;

.field private final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$9;Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$9$2;->this$1:Lcom/parse/ParseUser$9;

    iput-object p2, p0, Lcom/parse/ParseUser$9$2;->val$user:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$9$2;->val$authType:Ljava/lang/String;

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/ParseUser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 962
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$9$2;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$9$2;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$9$2;->val$authType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$9(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/parse/ParseUser$9$2;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$2(Lcom/parse/ParseUser;)V

    .line 965
    iget-object v0, p0, Lcom/parse/ParseUser$9$2;->val$user:Lcom/parse/ParseUser;

    monitor-exit v1

    return-object v0

    .line 962
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$9$2;->then(Lcom/parse/Task;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
