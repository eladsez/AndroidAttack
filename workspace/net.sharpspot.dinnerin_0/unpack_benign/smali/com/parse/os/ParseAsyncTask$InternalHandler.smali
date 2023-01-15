.class Lcom/parse/os/ParseAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ParseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/os/ParseAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/os/ParseAsyncTask$InternalHandler;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/parse/os/ParseAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;

    .line 452
    .local v0, "result":Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v1, v0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mTask:Lcom/parse/os/ParseAsyncTask;

    iget-object v2, v0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/parse/os/ParseAsyncTask;->access$0(Lcom/parse/os/ParseAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v1, v0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mTask:Lcom/parse/os/ParseAsyncTask;

    iget-object v2, v0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/parse/os/ParseAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v1, v0, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;->mTask:Lcom/parse/os/ParseAsyncTask;

    invoke-virtual {v1}, Lcom/parse/os/ParseAsyncTask;->onCancelled()V

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
