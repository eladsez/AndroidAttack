.class final Lcom/google/android/gms/internal/ads/bao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/ae<",
        "Lcom/google/android/gms/internal/ads/qo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bag;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "-",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bao;->b:Lcom/google/android/gms/internal/ads/bag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bao;->a:Lcom/google/android/gms/ads/internal/gmsg/ae;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bao;)Lcom/google/android/gms/ads/internal/gmsg/ae;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bao;->a:Lcom/google/android/gms/ads/internal/gmsg/ae;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bao;->a:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bao;->b:Lcom/google/android/gms/internal/ads/bag;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/ads/internal/gmsg/ae;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
