.class final Lcom/google/android/gms/internal/ads/bcw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/no;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcu;Lcom/google/android/gms/internal/ads/no;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcw;->b:Lcom/google/android/gms/internal/ads/bcu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcw;->a:Lcom/google/android/gms/internal/ads/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcw;->b:Lcom/google/android/gms/internal/ads/bcu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcu;->e(Lcom/google/android/gms/internal/ads/bcu;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/no;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcw;->a:Lcom/google/android/gms/internal/ads/no;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcw;->b:Lcom/google/android/gms/internal/ads/bcu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bcu;->e(Lcom/google/android/gms/internal/ads/bcu;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bco;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bco;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
