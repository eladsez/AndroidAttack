.class public final Lcom/google/android/gms/internal/ads/aju;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/akd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/internal/ads/is;",
            "Lcom/google/android/gms/internal/ads/ajv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/ajv;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/mv;

.field private final f:Lcom/google/android/gms/internal/ads/baq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aju;->e:Lcom/google/android/gms/internal/ads/mv;

    new-instance v0, Lcom/google/android/gms/internal/ads/baq;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/asr;->a:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/baq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->f:Lcom/google/android/gms/internal/ads/baq;

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/is;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ajv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ajv;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ajv;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ajv;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;)V
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/akb;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/akb;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/is;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/alh;Lcom/google/android/gms/internal/ads/qo;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Landroid/view/View;Lcom/google/android/gms/internal/ads/qo;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/akb;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/akb;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/is;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/aju;->a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/alh;Lcom/google/android/gms/internal/ads/qo;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/alh;Lcom/google/android/gms/internal/ads/qo;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/aju;->e(Lcom/google/android/gms/internal/ads/is;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ajv;

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/ads/ajv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aju;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aju;->e:Lcom/google/android/gms/internal/ads/mv;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ajv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/is;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/internal/ads/alh;)V

    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/ads/ajv;->a(Lcom/google/android/gms/internal/ads/akd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v7

    :goto_0
    if-eqz p4, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/ake;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/ake;-><init>(Lcom/google/android/gms/internal/ads/ajv;Lcom/google/android/gms/internal/ads/qo;)V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ajv;->a(Lcom/google/android/gms/internal/ads/akr;)V

    goto :goto_2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/aki;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/aju;->f:Lcom/google/android/gms/internal/ads/baq;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/aju;->d:Landroid/content/Context;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/aki;-><init>(Lcom/google/android/gms/internal/ads/ajv;Lcom/google/android/gms/internal/ads/baq;Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/is;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ajv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ajv;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/is;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ajv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ajv;->d()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/is;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ajv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ajv;->e()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/is;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ajv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ajv;->f()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
