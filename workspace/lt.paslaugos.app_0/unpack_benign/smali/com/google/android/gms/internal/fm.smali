.class public final Lcom/google/android/gms/internal/fm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final c:Lcom/google/android/gms/internal/aof;

.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aoo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/fz;

.field private g:Z

.field private final h:Lcom/google/android/gms/internal/fu;

.field private final i:Ljava/lang/Object;

.field private j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fm;->a:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fm;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/fu;Ljava/lang/String;Lcom/google/android/gms/internal/fz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fm;->j:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm;->m:Z

    const-string v0, "SafeBrowsing config is not present."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/fm;->e:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    iput-object p5, p0, Lcom/google/android/gms/internal/fm;->f:Lcom/google/android/gms/internal/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-object p1, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-object p1, p1, Lcom/google/android/gms/internal/fu;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/fm;->j:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/fm;->j:Ljava/util/HashSet;

    const-string p3, "cookie"

    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/gms/internal/aof;

    invoke-direct {p1}, Lcom/google/android/gms/internal/aof;-><init>()V

    const/16 p3, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/aof;->a:Ljava/lang/Integer;

    iput-object p4, p1, Lcom/google/android/gms/internal/aof;->b:Ljava/lang/String;

    iput-object p4, p1, Lcom/google/android/gms/internal/aof;->c:Ljava/lang/String;

    new-instance p3, Lcom/google/android/gms/internal/aog;

    invoke-direct {p3}, Lcom/google/android/gms/internal/aog;-><init>()V

    iput-object p3, p1, Lcom/google/android/gms/internal/aof;->d:Lcom/google/android/gms/internal/aog;

    iget-object p3, p1, Lcom/google/android/gms/internal/aof;->d:Lcom/google/android/gms/internal/aog;

    iget-object p4, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-object p4, p4, Lcom/google/android/gms/internal/fu;->a:Ljava/lang/String;

    iput-object p4, p3, Lcom/google/android/gms/internal/aog;->a:Ljava/lang/String;

    new-instance p3, Lcom/google/android/gms/internal/aop;

    invoke-direct {p3}, Lcom/google/android/gms/internal/aop;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    iput-object p2, p3, Lcom/google/android/gms/internal/aop;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/fm;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/rn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/rm;->a()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/gms/internal/aop;->c:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/l;->b()Lcom/google/android/gms/common/l;

    iget-object p2, p0, Lcom/google/android/gms/internal/fm;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/l;->c(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/gms/internal/aop;->b:Ljava/lang/Long;

    :cond_2
    iput-object p3, p1, Lcom/google/android/gms/internal/aof;->h:Lcom/google/android/gms/internal/aop;

    iput-object p1, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fm;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/internal/aof;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    return-object p0
.end method

.method static final synthetic b(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final c(Ljava/lang/String;)Lcom/google/android/gms/internal/aoo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aoo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fm;->a:Ljava/util/List;

    return-object v0
.end method

.method private final f()Lcom/google/android/gms/internal/lf;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/lf<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fu;->g:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fu;->f:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fu;->d:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/le;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    iget-object v5, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/aoo;

    iput-object v5, v4, Lcom/google/android/gms/internal/aof;->e:[Lcom/google/android/gms/internal/aoo;

    iget-object v4, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    iget-object v5, v5, Lcom/google/android/gms/internal/aof;->e:[Lcom/google/android/gms/internal/aoo;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/fw;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    iget-object v5, v5, Lcom/google/android/gms/internal/aof;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    iget-object v6, v6, Lcom/google/android/gms/internal/aof;->f:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x35

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Sending SB report\n  url: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  clickUrl: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  resources: \n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    iget-object v5, v5, Lcom/google/android/gms/internal/aof;->e:[Lcom/google/android/gms/internal/aoo;

    array-length v6, v5

    :goto_1
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    const-string v8, "    ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/google/android/gms/internal/aoo;->e:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/google/android/gms/internal/aoo;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fw;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    invoke-static {v1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;)[B

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-object v4, v4, Lcom/google/android/gms/internal/fu;->b:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/jb;

    iget-object v6, p0, Lcom/google/android/gms/internal/fm;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/jb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2, v4, v3, v1}, Lcom/google/android/gms/internal/jb;->a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/fw;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/fr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/fr;-><init>(Lcom/google/android/gms/internal/fm;)V

    sget-object v3, Lcom/google/android/gms/internal/hm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_7
    sget-object v2, Lcom/google/android/gms/internal/fo;->a:Lcom/google/android/gms/internal/kq;

    sget-object v3, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/kq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/fu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    return-object v0
.end method

.method final synthetic a(Ljava/util/Map;)Lcom/google/android/gms/internal/lf;
    .locals 10

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "matches"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fm;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/aoo;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v2, "Cannot find the corresponding resource object for "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/fw;->a(Ljava/lang/String;)V

    :goto_2
    monitor-exit v3

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, v5, Lcom/google/android/gms/internal/aoo;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_3

    iget-object v7, v5, Lcom/google/android/gms/internal/aoo;->e:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "threat_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/fm;->g:Z

    if-lez v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fm;->g:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/fm;->g:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/aof;->a:Ljava/lang/Integer;

    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/fm;->f()Lcom/google/android/gms/internal/lf;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :goto_5
    const-string v0, "Failed to get SafeBrowsing metadata"

    sget-object v1, Lcom/google/android/gms/internal/axt;->cr:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ku;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ld;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fu;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    invoke-static {p1}, Lcom/google/android/gms/internal/hs;->b(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to capture the webview bitmap."

    invoke-static {p1}, Lcom/google/android/gms/internal/fw;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm;->l:Z

    new-instance v0, Lcom/google/android/gms/internal/fp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fp;-><init>(Lcom/google/android/gms/internal/fm;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->c:Lcom/google/android/gms/internal/aof;

    iput-object p1, v1, Lcom/google/android/gms/internal/aof;->f:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/fm;->m:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aoo;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/aoo;->d:Ljava/lang/Integer;

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/aoo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aoo;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lcom/google/android/gms/internal/aoo;->d:Ljava/lang/Integer;

    iget-object p3, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lcom/google/android/gms/internal/aoo;->a:Ljava/lang/Integer;

    iput-object p1, v1, Lcom/google/android/gms/internal/aoo;->b:Ljava/lang/String;

    new-instance p3, Lcom/google/android/gms/internal/aoi;

    invoke-direct {p3}, Lcom/google/android/gms/internal/aoi;-><init>()V

    iput-object p3, v1, Lcom/google/android/gms/internal/aoo;->c:Lcom/google/android/gms/internal/aoi;

    iget-object p3, p0, Lcom/google/android/gms/internal/fm;->j:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    if-lez p3, :cond_7

    if-eqz p2, :cond_7

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v3, ""

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fm;->j:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/google/android/gms/internal/aoh;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aoh;-><init>()V

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/aoh;->a:[B

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/aoh;->b:[B

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v2, "Cannot convert string to bytes, skip header."

    invoke-static {v2}, Lcom/google/android/gms/internal/fw;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/android/gms/internal/aoh;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p3, v1, Lcom/google/android/gms/internal/aoo;->c:Lcom/google/android/gms/internal/aoi;

    iput-object p2, p3, Lcom/google/android/gms/internal/aoi;->a:[Lcom/google/android/gms/internal/aoh;

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->h:Lcom/google/android/gms/internal/fu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fu;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fm;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm;->k:Z

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->f:Lcom/google/android/gms/internal/fz;

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/fm;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/fn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/internal/fm;)V

    sget-object v3, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/kp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/fm;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/lf;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/fq;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/fq;-><init>(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/lf;)V

    sget-object v4, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/kr;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/fm;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
