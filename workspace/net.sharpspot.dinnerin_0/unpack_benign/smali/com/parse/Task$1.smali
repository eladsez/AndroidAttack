.class Lcom/parse/Task$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0xf


# instance fields
.field private executionDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/parse/Task$1;->executionDepth:Ljava/lang/ThreadLocal;

    .line 1
    return-void
.end method

.method private decrementDepth()I
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Lcom/parse/Task$1;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 51
    .local v1, "oldDepth":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 52
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 55
    .local v0, "newDepth":I
    if-nez v0, :cond_1

    .line 56
    iget-object v2, p0, Lcom/parse/Task$1;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/parse/Task$1;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private incrementDepth()I
    .locals 4

    .prologue
    .line 35
    iget-object v2, p0, Lcom/parse/Task$1;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 36
    .local v1, "oldDepth":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 37
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 40
    .local v0, "newDepth":I
    iget-object v2, p0, Lcom/parse/Task$1;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/parse/Task$1;->incrementDepth()I

    move-result v0

    .line 66
    .local v0, "depth":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 67
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/parse/Task$1;->decrementDepth()I

    .line 74
    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/parse/Task;->access$0()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    invoke-direct {p0}, Lcom/parse/Task$1;->decrementDepth()I

    .line 73
    throw v1
.end method
