.class public final Lcom/google/android/gms/internal/ads/aiz;
.super Lcom/google/android/gms/internal/ads/ajk;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aaa;II)V
    .locals 7

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ajk;-><init>(Lcom/google/android/gms/internal/ads/ahz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aaa;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/aaa;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/aaa;->p:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/aaa;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/aaa;->q:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aiz;->a:Lcom/google/android/gms/internal/ads/ahz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ahz;->a()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/aaa;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/aaa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/aaa;->p:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/aaa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiz;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aaa;->q:Ljava/lang/Long;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
