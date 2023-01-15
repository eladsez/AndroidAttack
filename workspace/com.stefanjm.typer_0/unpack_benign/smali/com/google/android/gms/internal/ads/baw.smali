.class final Lcom/google/android/gms/internal/ads/baw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/ae<",
        "Lcom/google/android/gms/internal/ads/bbn;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ahi;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bae;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ly;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/baq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baq;Lcom/google/android/gms/internal/ads/ahi;Lcom/google/android/gms/internal/ads/bae;Lcom/google/android/gms/internal/ads/ly;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baw;->d:Lcom/google/android/gms/internal/ads/baq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/baw;->a:Lcom/google/android/gms/internal/ads/ahi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/baw;->b:Lcom/google/android/gms/internal/ads/bae;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/baw;->c:Lcom/google/android/gms/internal/ads/ly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/baw;->d:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/baq;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/baw;->d:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/baq;->d(Lcom/google/android/gms/internal/ads/baq;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/baw;->d:Lcom/google/android/gms/internal/ads/baq;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/baq;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/baw;->d:Lcom/google/android/gms/internal/ads/baq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baw;->a:Lcom/google/android/gms/internal/ads/ahi;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/ahi;)Lcom/google/android/gms/internal/ads/bbh;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/baw;->b:Lcom/google/android/gms/internal/ads/bae;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baw;->c:Lcom/google/android/gms/internal/ads/ly;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ly;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/bae;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
