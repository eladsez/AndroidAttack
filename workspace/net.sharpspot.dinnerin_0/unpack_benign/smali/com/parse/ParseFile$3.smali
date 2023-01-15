.class Lcom/parse/ParseFile$3;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;Lcom/parse/Task;)Lcom/parse/Task;
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
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    iput-object p3, p0, Lcom/parse/ParseFile$3;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseFile$3;)Lcom/parse/ParseFile;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

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

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3;->then(Lcom/parse/Task;)Ljava/lang/Void;

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
    .line 337
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseRequestRetryer;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    invoke-static {v2}, Lcom/parse/ParseFile;->access$4(Lcom/parse/ParseFile;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parse/ParseRequestRetryer;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;JI)V

    .line 338
    .local v0, "retryer":Lcom/parse/ParseRequestRetryer;
    iget-object v1, p0, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRequestRetryer;->goAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v1

    .line 339
    new-instance v2, Lcom/parse/ParseFile$3$1;

    iget-object v3, p0, Lcom/parse/ParseFile$3;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {v2, p0, v3}, Lcom/parse/ParseFile$3$1;-><init>(Lcom/parse/ParseFile$3;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/parse/ParseFile$3$2;

    iget-object v3, p0, Lcom/parse/ParseFile$3;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {v2, p0, v3}, Lcom/parse/ParseFile$3$2;-><init>(Lcom/parse/ParseFile$3;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 367
    const/4 v1, 0x0

    return-object v1
.end method
