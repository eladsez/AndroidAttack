.class Lcom/parse/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callable:Ljava/util/concurrent/Callable;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Task$3;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iput-object p2, p0, Lcom/parse/Task$3;->val$callable:Ljava/util/concurrent/Callable;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/parse/Task$3;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v2, p0, Lcom/parse/Task$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/parse/Task$3;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
