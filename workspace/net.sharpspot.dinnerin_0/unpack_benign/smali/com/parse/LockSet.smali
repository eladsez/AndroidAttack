.class Lcom/parse/LockSet;
.super Ljava/lang/Object;
.source "LockSet.java"


# static fields
.field private static nextStableId:J

.field private static stableIds:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final locks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    .line 12
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/parse/LockSet;->nextStableId:J

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "locks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/locks/Lock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/parse/LockSet$1;

    invoke-direct {v1, p0}, Lcom/parse/LockSet$1;-><init>(Lcom/parse/LockSet;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    .line 24
    iget-object v0, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 25
    return-void
.end method

.method static synthetic access$0(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/parse/LockSet;->getStableId(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static getStableId(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;
    .locals 6
    .param p0, "lock"    # Ljava/util/concurrent/locks/Lock;

    .prologue
    .line 28
    sget-object v3, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 29
    :try_start_0
    sget-object v2, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    sget-object v2, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    monitor-exit v3

    .line 34
    :goto_0
    return-object v2

    .line 32
    :cond_0
    sget-wide v0, Lcom/parse/LockSet;->nextStableId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    sput-wide v4, Lcom/parse/LockSet;->nextStableId:J

    .line 33
    .local v0, "id":J
    sget-object v2, Lcom/parse/LockSet;->stableIds:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 28
    .end local v0    # "id":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public lock()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    return-void

    .line 39
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    .line 40
    .local v0, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/parse/LockSet;->locks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    return-void

    .line 45
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    .line 46
    .local v0, "l":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
