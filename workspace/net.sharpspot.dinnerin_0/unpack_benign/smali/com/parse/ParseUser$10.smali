.class Lcom/parse/ParseUser$10;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$authData:Lorg/json/JSONObject;

.field private final synthetic val$authType:Ljava/lang/String;

.field private final synthetic val$oldAnonymousData:Lorg/json/JSONObject;

.field private final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$10;->val$user:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$10;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$10;->val$authData:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/parse/ParseUser$10;->val$oldAnonymousData:Lorg/json/JSONObject;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    .line 982
    new-instance v1, Lcom/parse/ParseUser$10$1;

    iget-object v2, p0, Lcom/parse/ParseUser$10;->val$user:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseUser$10;->val$authType:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseUser$10;->val$authData:Lorg/json/JSONObject;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/parse/ParseUser$10$1;-><init>(Lcom/parse/ParseUser$10;Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    .line 993
    new-instance v1, Lcom/parse/ParseUser$10$2;

    iget-object v2, p0, Lcom/parse/ParseUser$10;->val$user:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseUser$10;->val$authType:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseUser$10;->val$oldAnonymousData:Lorg/json/JSONObject;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/parse/ParseUser$10$2;-><init>(Lcom/parse/ParseUser$10;Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    .line 981
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$10;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
