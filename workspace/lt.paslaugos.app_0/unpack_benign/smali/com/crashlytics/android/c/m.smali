.class Lcom/crashlytics/android/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/c/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/crashlytics/android/c/m$a;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/m$a;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/m;->a:Lcom/crashlytics/android/c/m$a;

    iput-object p2, p0, Lcom/crashlytics/android/c/m;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/crashlytics/android/c/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/crashlytics/android/c/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/c/m;->a:Lcom/crashlytics/android/c/m$a;

    invoke-interface {v1, p1, p2}, Lcom/crashlytics/android/c/m$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/c/m;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/crashlytics/android/c/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "An error occurred in the uncaught exception handler"

    invoke-interface {v2, v3, v4, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crashlytics/android/c/m;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/crashlytics/android/c/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
