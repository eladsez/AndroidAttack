.class Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;
.super Ljava/lang/Object;
.source "ParseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/os/ParseAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseAsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/parse/os/ParseAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/parse/os/ParseAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/parse/os/ParseAsyncTask;
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/os/ParseAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>.ParseAsyncTaskResult<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mTask:Lcom/parse/os/ParseAsyncTask;

    .line 479
    iput-object p2, p0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 480
    return-void
.end method
