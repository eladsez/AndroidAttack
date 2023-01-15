.class public Lcn/com/picvision/util/NetworkListener;
.super Ljava/lang/Object;
.source "NetworkListener.java"


# static fields
.field public static final HAVE:I = 0x0

.field public static final NONE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field isListener:Z

.field private netService:Lcn/com/picvision/util/NetworkService;

.field private stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcn/com/picvision/util/NetworkListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/NetworkListener;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcn/com/picvision/util/NetworkListener;->type:I

    .line 21
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcn/com/picvision/util/NetworkListener;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/NetworkListener;->isListener:Z

    .line 29
    iput-object p1, p0, Lcn/com/picvision/util/NetworkListener;->handler:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcn/com/picvision/util/NetworkService;

    invoke-direct {v0, p2}, Lcn/com/picvision/util/NetworkService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/picvision/util/NetworkListener;->netService:Lcn/com/picvision/util/NetworkService;

    .line 31
    invoke-direct {p0}, Lcn/com/picvision/util/NetworkListener;->init()V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcn/com/picvision/util/NetworkListener;)Lcn/com/picvision/util/NetworkService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/picvision/util/NetworkListener;->netService:Lcn/com/picvision/util/NetworkService;

    return-object v0
.end method

.method static synthetic access$1(Lcn/com/picvision/util/NetworkListener;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcn/com/picvision/util/NetworkListener;->type:I

    return v0
.end method

.method static synthetic access$2(Lcn/com/picvision/util/NetworkListener;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/picvision/util/NetworkListener;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcn/com/picvision/util/NetworkListener;I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcn/com/picvision/util/NetworkListener;->type:I

    return-void
.end method

.method private final init()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/picvision/util/NetworkListener$1;

    invoke-direct {v1, p0}, Lcn/com/picvision/util/NetworkListener$1;-><init>(Lcn/com/picvision/util/NetworkListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/com/picvision/util/NetworkListener;->thread:Ljava/lang/Thread;

    .line 60
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcn/com/picvision/util/NetworkListener;->isListener:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/picvision/util/NetworkListener;->isListener:Z

    .line 68
    iget-object v0, p0, Lcn/com/picvision/util/NetworkListener;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcn/com/picvision/util/NetworkListener;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    iget-object v0, p0, Lcn/com/picvision/util/NetworkListener;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 71
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcn/com/picvision/util/NetworkListener;->isListener:Z

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/picvision/util/NetworkListener;->isListener:Z

    .line 80
    :cond_0
    return-void
.end method
