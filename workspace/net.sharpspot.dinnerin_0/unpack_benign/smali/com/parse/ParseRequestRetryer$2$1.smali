.class Lcom/parse/ParseRequestRetryer$2$1;
.super Ljava/lang/Object;
.source "ParseRequestRetryer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequestRetryer$2;->then(Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseRequestRetryer$2;

.field private final synthetic val$progressCallback:Lcom/parse/ProgressCallback;

.field private final synthetic val$retryTask:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequestRetryer$2;Lcom/parse/ProgressCallback;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer$2$1;->this$1:Lcom/parse/ParseRequestRetryer$2;

    iput-object p2, p0, Lcom/parse/ParseRequestRetryer$2$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    iput-object p3, p0, Lcom/parse/ParseRequestRetryer$2$1;->val$retryTask:Lcom/parse/Task$TaskCompletionSource;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer$2$1;->this$1:Lcom/parse/ParseRequestRetryer$2;

    invoke-static {v0}, Lcom/parse/ParseRequestRetryer$2;->access$1(Lcom/parse/ParseRequestRetryer$2;)Lcom/parse/ParseRequestRetryer;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseRequestRetryer;->access$5(Lcom/parse/ParseRequestRetryer;)J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/parse/ParseRequestRetryer;->access$6(Lcom/parse/ParseRequestRetryer;J)V

    .line 125
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer$2$1;->this$1:Lcom/parse/ParseRequestRetryer$2;

    invoke-static {v0}, Lcom/parse/ParseRequestRetryer$2;->access$1(Lcom/parse/ParseRequestRetryer$2;)Lcom/parse/ParseRequestRetryer;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRequestRetryer$2$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRequestRetryer;->goAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/parse/ParseRequestRetryer$2$1$1;

    iget-object v2, p0, Lcom/parse/ParseRequestRetryer$2$1;->val$retryTask:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {v1, p0, v2}, Lcom/parse/ParseRequestRetryer$2$1$1;-><init>(Lcom/parse/ParseRequestRetryer$2$1;Lcom/parse/Task$TaskCompletionSource;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 138
    return-void
.end method
