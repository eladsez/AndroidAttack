.class Lcom/parse/os/ParseAsyncTask$2;
.super Lcom/parse/os/ParseAsyncTask$WorkerRunnable;
.source "ParseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/os/ParseAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/os/ParseAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/os/ParseAsyncTask;


# direct methods
.method constructor <init>(Lcom/parse/os/ParseAsyncTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/os/ParseAsyncTask$2;->this$0:Lcom/parse/os/ParseAsyncTask;

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/os/ParseAsyncTask$WorkerRunnable;-><init>(Lcom/parse/os/ParseAsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 215
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask$2;->this$0:Lcom/parse/os/ParseAsyncTask;

    iget-object v1, p0, Lcom/parse/os/ParseAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/parse/os/ParseAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
