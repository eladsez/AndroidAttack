.class public final Lcom/google/android/gms/internal/ads/bbd;
.super Lcom/google/android/gms/internal/ads/of;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/of<",
        "Lcom/google/android/gms/internal/ads/bbn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/internal/ads/bbh;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bbh;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/of;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbd;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbd;->b:Lcom/google/android/gms/internal/ads/bbh;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bbd;)Lcom/google/android/gms/internal/ads/bbh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bbd;->b:Lcom/google/android/gms/internal/ads/bbh;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbd;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bbd;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bbd;->c:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/bbe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bbe;-><init>(Lcom/google/android/gms/internal/ads/bbd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/od;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/od;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/bbf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bbf;-><init>(Lcom/google/android/gms/internal/ads/bbd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/bbg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bbg;-><init>(Lcom/google/android/gms/internal/ads/bbd;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
