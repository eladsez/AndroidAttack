.class Lanywheresoftware/b4a/BA$1;
.super Ljava/lang/Object;
.source "BA.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/BA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final original:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/BA$1;->original:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lanywheresoftware/b4a/BA;->printException(Ljava/lang/Throwable;Z)Ljava/lang/String;

    .line 91
    sget-object v0, Lanywheresoftware/b4a/BA;->bridgeLog:Lanywheresoftware/b4a/BA$IBridgeLog;

    if-eqz v0, :cond_0

    .line 93
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->original:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method
