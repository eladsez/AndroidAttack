.class public final Lcom/google/android/gms/d/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/d/i$a;,
        Lcom/google/android/gms/d/i$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Exception;)Lcom/google/android/gms/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/d/f<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/d/u;

    invoke-direct {v0}, Lcom/google/android/gms/d/u;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/d/u;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/google/android/gms/d/f<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/d/u;

    invoke-direct {v0}, Lcom/google/android/gms/d/u;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/d/u;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/d/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/google/android/gms/d/f<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/d/u;

    invoke-direct {v0}, Lcom/google/android/gms/d/u;-><init>()V

    new-instance v1, Lcom/google/android/gms/d/v;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/d/v;-><init>(Lcom/google/android/gms/d/u;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/d/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/d/f<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/ad;->a()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/d/i;->b(Lcom/google/android/gms/d/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/d/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/d/i$a;-><init>(Lcom/google/android/gms/d/v;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/d/i;->a(Lcom/google/android/gms/d/f;Lcom/google/android/gms/d/i$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/d/i$a;->b()V

    invoke-static {p0}, Lcom/google/android/gms/d/i;->b(Lcom/google/android/gms/d/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/d/f;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/d/f<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/ad;->a()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/d/i;->b(Lcom/google/android/gms/d/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/d/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/d/i$a;-><init>(Lcom/google/android/gms/d/v;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/d/i;->a(Lcom/google/android/gms/d/f;Lcom/google/android/gms/d/i$b;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/d/i$a;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/d/i;->b(Lcom/google/android/gms/d/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/d/f;Lcom/google/android/gms/d/i$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/f<",
            "*>;",
            "Lcom/google/android/gms/d/i$b;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/d/h;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/d/f;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/d;)Lcom/google/android/gms/d/f;

    sget-object v0, Lcom/google/android/gms/d/h;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/d/f;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/c;)Lcom/google/android/gms/d/f;

    sget-object v0, Lcom/google/android/gms/d/h;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/d/f;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/a;)Lcom/google/android/gms/d/f;

    return-void
.end method

.method private static b(Lcom/google/android/gms/d/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/d/f<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/d/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/d/f;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/d/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/d/f;->e()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
