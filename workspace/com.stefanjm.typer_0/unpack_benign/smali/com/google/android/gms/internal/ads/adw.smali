.class final Lcom/google/android/gms/internal/ads/adw;
.super Lcom/google/android/gms/internal/ads/aec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aec;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adw;->a:Lcom/google/android/gms/internal/ads/adt;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aec;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/adu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/adu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/adw;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/adv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adw;->a:Lcom/google/android/gms/internal/ads/adt;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/adv;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/adu;)V

    return-object v0
.end method
