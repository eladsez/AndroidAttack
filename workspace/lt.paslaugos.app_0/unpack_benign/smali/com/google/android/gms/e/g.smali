.class public final Lcom/google/android/gms/e/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/e/g$a;,
        Lcom/google/android/gms/e/g$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Exception;)Lcom/google/android/gms/e/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/e/d<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/e/o;

    invoke-direct {v0}, Lcom/google/android/gms/e/o;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/e/o;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/e/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/google/android/gms/e/d<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/e/o;

    invoke-direct {v0}, Lcom/google/android/gms/e/o;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/e/o;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/e/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/google/android/gms/e/d<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/e/o;

    invoke-direct {v0}, Lcom/google/android/gms/e/o;-><init>()V

    new-instance v1, Lcom/google/android/gms/e/p;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/e/p;-><init>(Lcom/google/android/gms/e/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/e/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/e/d<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->c(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/e/g;->b(Lcom/google/android/gms/e/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/e/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/e/g$a;-><init>(Lcom/google/android/gms/e/p;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/e/g;->a(Lcom/google/android/gms/e/d;Lcom/google/android/gms/e/g$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/e/g$a;->a()V

    invoke-static {p0}, Lcom/google/android/gms/e/g;->b(Lcom/google/android/gms/e/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/e/d;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/e/d<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->c(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/e/g;->b(Lcom/google/android/gms/e/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/e/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/e/g$a;-><init>(Lcom/google/android/gms/e/p;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/e/g;->a(Lcom/google/android/gms/e/d;Lcom/google/android/gms/e/g$b;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/e/g$a;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/e/g;->b(Lcom/google/android/gms/e/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/gms/e/d;Lcom/google/android/gms/e/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/e/d<",
            "*>;",
            "Lcom/google/android/gms/e/g$b;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/e/f;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/e/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/e/b;)Lcom/google/android/gms/e/d;

    sget-object v0, Lcom/google/android/gms/e/f;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/e/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/e/a;)Lcom/google/android/gms/e/d;

    return-void
.end method

.method private static b(Lcom/google/android/gms/e/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/e/d<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/e/d;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/e/d;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
