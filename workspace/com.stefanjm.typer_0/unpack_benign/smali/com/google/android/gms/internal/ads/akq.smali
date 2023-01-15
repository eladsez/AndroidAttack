.class final Lcom/google/android/gms/internal/ads/akq;
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
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akq;->a:Lcom/google/android/gms/internal/ads/aki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/bbn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akq;->a:Lcom/google/android/gms/internal/ads/aki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aki;->a(Lcom/google/android/gms/internal/ads/aki;)Lcom/google/android/gms/internal/ads/ajv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ajv;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akq;->a:Lcom/google/android/gms/internal/ads/aki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aki;->b(Lcom/google/android/gms/internal/ads/aki;)Lcom/google/android/gms/ads/internal/gmsg/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
