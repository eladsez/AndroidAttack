.class public La/a/a/a/a/c/k;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/c/k$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, La/a/a/a/a/c/k;->a:I

    sget v0, La/a/a/a/a/c/k;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/a/a/a/a/c/k;->b:I

    sget v0, La/a/a/a/a/c/k;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, La/a/a/a/a/c/k;->c:I

    return-void
.end method

.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;La/a/a/a/a/c/c;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "La/a/a/a/a/c/b;",
            ":",
            "La/a/a/a/a/c/l;",
            ":",
            "La/a/a/a/a/c/i;",
            ">(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "La/a/a/a/a/c/c<",
            "TT;>;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {p0}, La/a/a/a/a/c/k;->prestartAllCoreThreads()I

    return-void
.end method

.method public static a()La/a/a/a/a/c/k;
    .locals 2

    sget v0, La/a/a/a/a/c/k;->b:I

    sget v1, La/a/a/a/a/c/k;->c:I

    invoke-static {v0, v1}, La/a/a/a/a/c/k;->a(II)La/a/a/a/a/c/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)La/a/a/a/a/c/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "La/a/a/a/a/c/b;",
            ":",
            "La/a/a/a/a/c/l;",
            ":",
            "La/a/a/a/a/c/i;",
            ">(II)",
            "La/a/a/a/a/c/k;"
        }
    .end annotation

    new-instance v8, La/a/a/a/a/c/k;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, La/a/a/a/a/c/c;

    invoke-direct {v6}, La/a/a/a/a/c/c;-><init>()V

    new-instance v7, La/a/a/a/a/c/k$a;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, La/a/a/a/a/c/k$a;-><init>(I)V

    const-wide/16 v3, 0x1

    move-object v0, v8

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/a/c/k;-><init>(IIJLjava/util/concurrent/TimeUnit;La/a/a/a/a/c/c;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, La/a/a/a/a/c/l;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, La/a/a/a/a/c/l;->b(Z)V

    invoke-interface {v0, p2}, La/a/a/a/a/c/l;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, La/a/a/a/a/c/k;->b()La/a/a/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/c/c;->d()V

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()La/a/a/a/a/c/c;
    .locals 1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/c;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {p1}, La/a/a/a/a/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/a/a/a/a/c/k;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/c/k;->b()La/a/a/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La/a/a/a/a/c/h;

    invoke-direct {v0, p1, p2}, La/a/a/a/a/c/h;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La/a/a/a/a/c/h;

    invoke-direct {v0, p1}, La/a/a/a/a/c/h;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
