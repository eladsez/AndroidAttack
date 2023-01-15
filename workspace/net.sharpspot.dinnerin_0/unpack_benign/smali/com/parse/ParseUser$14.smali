.class Lcom/parse/ParseUser$14;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLazinessAsync(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/parse/ParseFieldOperation;",
        ">;",
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field private final synthetic val$operations:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$14;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$14;->val$operations:Lcom/parse/Capture;

    .line 1061
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;>;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$operations:Lcom/parse/Capture;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/parse/Capture;->set(Ljava/lang/Object;)V

    .line 1064
    iget-object v2, p0, Lcom/parse/ParseUser$14;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$14;->val$operations:Lcom/parse/Capture;

    invoke-virtual {v1}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/parse/ParseUser;->access$8(Lcom/parse/ParseUser;Ljava/util/Map;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1065
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v1

    return-object v1
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$14;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
