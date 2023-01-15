.class final synthetic Lcom/google/android/gms/internal/ads/bad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bac;

.field private final b:Lcom/google/android/gms/ads/internal/gmsg/ae;

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bac;Lcom/google/android/gms/ads/internal/gmsg/ae;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bad;->a:Lcom/google/android/gms/internal/ads/bac;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bad;->b:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bad;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bad;->a:Lcom/google/android/gms/internal/ads/bac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bad;->b:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bad;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bac;->o()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/ae;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
