.class final Lcom/google/android/gms/internal/ads/baz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe<",
        "Lcom/google/android/gms/internal/ads/bae;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bbh;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/baq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baq;Lcom/google/android/gms/internal/ads/bbh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/baq;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/baq;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/baq;->b(Lcom/google/android/gms/internal/ads/baq;)Lcom/google/android/gms/internal/ads/bbh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/bbh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/baq;->b(Lcom/google/android/gms/internal/ads/baq;)Lcom/google/android/gms/internal/ads/bbh;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/baq;->b(Lcom/google/android/gms/internal/ads/baq;)Lcom/google/android/gms/internal/ads/bbh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbh;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baz;->b:Lcom/google/android/gms/internal/ads/baq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baz;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/baq;Lcom/google/android/gms/internal/ads/bbh;)Lcom/google/android/gms/internal/ads/bbh;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
