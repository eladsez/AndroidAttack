.class Lcom/parse/ParseUser$6;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->signUpAsync(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field private final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$6;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$6;->val$sessionToken:Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseUser$6;)Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/parse/ParseUser$6;->this$0:Lcom/parse/ParseUser;

    return-object v0
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
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
    .line 586
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 587
    .local v1, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v2, p0, Lcom/parse/ParseUser$6;->this$0:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseUser$6;->val$sessionToken:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/parse/ParseUser;->access$4(Lcom/parse/ParseUser;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 588
    .local v0, "command":Lcom/parse/ParseCommand;
    if-nez v0, :cond_0

    .line 589
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v2

    .line 591
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v2

    .line 592
    new-instance v3, Lcom/parse/ParseUser$6$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseUser$6$1;-><init>(Lcom/parse/ParseUser$6;Lcom/parse/ParseCommand;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    .line 603
    invoke-virtual {v2}, Lcom/parse/Task;->makeVoid()Lcom/parse/Task;

    move-result-object v2

    goto :goto_0
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$6;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
