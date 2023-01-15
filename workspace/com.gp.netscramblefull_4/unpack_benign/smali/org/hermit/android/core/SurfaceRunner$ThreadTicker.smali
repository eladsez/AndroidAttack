.class Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;
.super Ljava/lang/Thread;
.source "SurfaceRunner.java"

# interfaces
.implements Lorg/hermit/android/core/SurfaceRunner$Ticker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/SurfaceRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadTicker"
.end annotation


# instance fields
.field private enable:Z

.field final synthetic this$0:Lorg/hermit/android/core/SurfaceRunner;


# direct methods
.method private constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 2

    .prologue
    .line 945
    iput-object p1, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    .line 941
    const-string v0, "Surface Runner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 999
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->enable:Z

    .line 942
    const-string v0, "SurfaceRunner"

    const-string v1, "ThreadTicker: start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->enable:Z

    .line 944
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/android/core/SurfaceRunner;Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;)V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 2

    .prologue
    .line 950
    const-string v0, "SurfaceRunner"

    const-string v1, "ThreadTicker: kill"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->enable:Z

    .line 953
    return-void
.end method

.method public killAndWait()V
    .locals 3

    .prologue
    const-string v2, "SurfaceRunner"

    .line 962
    const-string v1, "SurfaceRunner"

    const-string v1, "ThreadTicker: killAndWait"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 965
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ThreadTicker.killAndWait() called from ticker thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->enable:Z

    .line 971
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    const/4 v0, 0x1

    .line 973
    .local v0, "retry":Z
    :goto_0
    if-nez v0, :cond_1

    .line 979
    const-string v1, "SurfaceRunner"

    const-string v1, "ThreadTicker: killed"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v0    # "retry":Z
    :goto_1
    return-void

    .line 975
    .restart local v0    # "retry":Z
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    const/4 v0, 0x0

    goto :goto_0

    .line 981
    .end local v0    # "retry":Z
    :cond_2
    const-string v1, "SurfaceRunner"

    const-string v1, "Ticker: was dead"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 977
    .restart local v0    # "retry":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 989
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->enable:Z

    if-nez v0, :cond_1

    .line 996
    return-void

    .line 990
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner;->access$0(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 992
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner;->access$1(Lorg/hermit/android/core/SurfaceRunner;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 993
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    invoke-static {v0}, Lorg/hermit/android/core/SurfaceRunner;->access$1(Lorg/hermit/android/core/SurfaceRunner;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    goto :goto_0
.end method
