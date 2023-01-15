.class Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;
.super Ljava/lang/Object;
.source "B4AThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/B4AThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueuedTask"
.end annotation


# instance fields
.field final container:Ljava/lang/Object;

.field final task:Ljava/lang/Runnable;

.field final taskId:I

.field final synthetic this$0:Lanywheresoftware/b4a/B4AThreadPool;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/B4AThreadPool;Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 0
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "container"    # Ljava/lang/Object;
    .param p4, "taskId"    # I

    .prologue
    .line 71
    iput-object p1, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->this$0:Lanywheresoftware/b4a/B4AThreadPool;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->task:Ljava/lang/Runnable;

    .line 69
    iput-object p3, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->container:Ljava/lang/Object;

    .line 70
    iput p4, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->taskId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->this$0:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-static {v0}, Lanywheresoftware/b4a/B4AThreadPool;->access$0(Lanywheresoftware/b4a/B4AThreadPool;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->this$0:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-static {v1}, Lanywheresoftware/b4a/B4AThreadPool;->access$0(Lanywheresoftware/b4a/B4AThreadPool;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 74
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->this$0:Lanywheresoftware/b4a/B4AThreadPool;

    iget-object v1, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->task:Ljava/lang/Runnable;

    iget-object v2, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->container:Ljava/lang/Object;

    iget v3, p0, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;->taskId:I

    invoke-static {v0, v1, v2, v3}, Lanywheresoftware/b4a/B4AThreadPool;->access$1(Lanywheresoftware/b4a/B4AThreadPool;Ljava/lang/Runnable;Ljava/lang/Object;I)V

    goto :goto_0
.end method
