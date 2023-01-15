.class Lcom/parse/ParseUser$9$1;
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
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$9;

.field private final synthetic val$command:Lcom/parse/ParseCommand;

.field private final synthetic val$operations:Ljava/util/Map;

.field private final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$9;Lcom/parse/ParseUser;Lcom/parse/ParseCommand;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$9$1;->this$1:Lcom/parse/ParseUser$9;

    iput-object p2, p0, Lcom/parse/ParseUser$9$1;->val$user:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$9$1;->val$command:Lcom/parse/ParseCommand;

    iput-object p4, p0, Lcom/parse/ParseUser$9$1;->val$operations:Ljava/util/Map;

    .line 955
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
            "Ljava/lang/Object;",
            ">;)",
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
    .line 957
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/parse/ParseUser$9$1;->val$user:Lcom/parse/ParseUser;

    iget-object v0, p0, Lcom/parse/ParseUser$9$1;->val$command:Lcom/parse/ParseCommand;

    iget-object v2, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/ParseUser$9$1;->val$operations:Ljava/util/Map;

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 958
    const/4 v0, 0x0

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$9$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
