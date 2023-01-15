.class public Lcom/parse/ParseCommandCache$TestHelper;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseCommandCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestHelper"
.end annotation


# static fields
.field public static final COMMAND_ENQUEUED:I = 0x3

.field public static final COMMAND_FAILED:I = 0x2

.field public static final COMMAND_NOT_ENQUEUED:I = 0x4

.field public static final COMMAND_SUCCESSFUL:I = 0x1

.field private static final MAX_EVENTS:I = 0x3e8

.field public static final OBJECT_REMOVED:I = 0x6

.field public static final OBJECT_UPDATED:I = 0x5


# instance fields
.field private events:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/ParseCommandCache;


# direct methods
.method private constructor <init>(Lcom/parse/ParseCommandCache;)V
    .locals 1

    .prologue
    .line 686
    iput-object p1, p0, Lcom/parse/ParseCommandCache$TestHelper;->this$0:Lcom/parse/ParseCommandCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    .line 687
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache$TestHelper;->clear()V

    .line 688
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCommandCache$TestHelper;)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/parse/ParseCommandCache$TestHelper;-><init>(Lcom/parse/ParseCommandCache;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    .line 691
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 692
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    return-void

    .line 698
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 699
    .local v0, "event":I
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    goto :goto_0
.end method

.method public notify(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 713
    return-void
.end method

.method public unexpectedEvents()I
    .locals 5

    .prologue
    .line 704
    const/4 v1, 0x0

    .line 705
    .local v1, "sum":I
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    return v1

    .line 705
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 706
    .local v0, "event":I
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public waitFor(I)Z
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    :goto_0
    return v1

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 720
    const/4 v1, 0x0

    goto :goto_0
.end method
