.class public Lcn/com/picvision/util/TextThread;
.super Ljava/lang/Thread;
.source "TextThread.java"


# instance fields
.field public isStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/TextThread;->isStart:Z

    .line 44
    return-void
.end method
