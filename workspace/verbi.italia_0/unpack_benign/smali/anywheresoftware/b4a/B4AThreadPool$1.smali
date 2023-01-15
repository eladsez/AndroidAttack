.class Lanywheresoftware/b4a/B4AThreadPool$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "B4AThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/B4AThreadPool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/B4AThreadPool;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/B4AThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # J
    .param p6, "$anonymous3"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1
    .local p7, "$anonymous4":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lanywheresoftware/b4a/B4AThreadPool$1;->this$0:Lanywheresoftware/b4a/B4AThreadPool;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 27
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 38
    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Lanywheresoftware/b4a/B4AThreadPool$1;->this$0:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-static {v2}, Lanywheresoftware/b4a/B4AThreadPool;->access$2(Lanywheresoftware/b4a/B4AThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;

    .line 34
    .local v1, "qt":Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;
    if-eqz v1, :cond_1

    .line 35
    sget-object v2, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
