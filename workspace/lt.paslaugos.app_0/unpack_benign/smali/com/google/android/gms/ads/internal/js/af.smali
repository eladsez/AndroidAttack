.class final Lcom/google/android/gms/ads/internal/js/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/aa<",
        "Lcom/google/android/gms/ads/internal/js/k;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zk;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/o;

.field private synthetic c:Lcom/google/android/gms/internal/jq;

.field private synthetic d:Lcom/google/android/gms/ads/internal/js/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/ads/internal/js/o;Lcom/google/android/gms/internal/jq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/af;->d:Lcom/google/android/gms/ads/internal/js/z;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/af;->a:Lcom/google/android/gms/internal/zk;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/af;->b:Lcom/google/android/gms/ads/internal/js/o;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/js/af;->c:Lcom/google/android/gms/internal/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/af;->d:Lcom/google/android/gms/ads/internal/js/z;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/js/z;->a(Lcom/google/android/gms/ads/internal/js/z;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/af;->d:Lcom/google/android/gms/ads/internal/js/z;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/js/z;->d(Lcom/google/android/gms/ads/internal/js/z;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    invoke-static {p2}, Lcom/google/android/gms/internal/he;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/af;->d:Lcom/google/android/gms/ads/internal/js/z;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/ads/internal/js/z;->a(Lcom/google/android/gms/ads/internal/js/z;I)I

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/af;->d:Lcom/google/android/gms/ads/internal/js/z;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/af;->a:Lcom/google/android/gms/internal/zk;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/js/z;->a(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/f;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/af;->b:Lcom/google/android/gms/ads/internal/js/o;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/af;->c:Lcom/google/android/gms/internal/jq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jq;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/ads/internal/js/o;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
