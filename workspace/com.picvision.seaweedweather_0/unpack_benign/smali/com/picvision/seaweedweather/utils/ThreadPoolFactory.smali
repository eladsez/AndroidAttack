.class public Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;
.super Ljava/lang/Object;
.source "ThreadPoolFactory.java"


# static fields
.field private static ourInstance:Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;


# instance fields
.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;->ourInstance:Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;->ourInstance:Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/ThreadPoolFactory;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 27
    return-void
.end method
