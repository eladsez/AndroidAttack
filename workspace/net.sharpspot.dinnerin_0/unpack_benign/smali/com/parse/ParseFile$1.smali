.class Lcom/parse/ParseFile$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveAsync(Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field private final synthetic val$progressCallback:Lcom/parse/ProgressCallback;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/ParseFile$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseFile$1;)Lcom/parse/ParseFile;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    return-object v0
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$1;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    .line 222
    iget-object v1, p0, Lcom/parse/ParseFile$1;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v1}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/parse/ParseFile$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v1, v4}, Lcom/parse/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 270
    :goto_0
    return-object v4

    .line 227
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseFile$1$1;

    iget-object v2, p0, Lcom/parse/ParseFile$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {v1, p0, v0, v2}, Lcom/parse/ParseFile$1$1;-><init>(Lcom/parse/ParseFile$1;Ljava/lang/String;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-static {v1}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/parse/ParseFile$1$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseFile$1$2;-><init>(Lcom/parse/ParseFile$1;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 246
    new-instance v2, Lcom/parse/ParseFile$1$3;

    iget-object v3, p0, Lcom/parse/ParseFile$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {v2, p0, v3}, Lcom/parse/ParseFile$1$3;-><init>(Lcom/parse/ParseFile$1;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 250
    new-instance v2, Lcom/parse/ParseFile$1$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseFile$1$4;-><init>(Lcom/parse/ParseFile$1;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 257
    new-instance v2, Lcom/parse/ParseFile$1$5;

    iget-object v3, p0, Lcom/parse/ParseFile$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {v2, p0, v3}, Lcom/parse/ParseFile$1$5;-><init>(Lcom/parse/ParseFile$1;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    goto :goto_0
.end method
