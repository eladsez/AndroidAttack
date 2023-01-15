.class final Lcom/google/android/gms/internal/ads/akp;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akp;->a:Lcom/google/android/gms/internal/ads/aki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/akp;->a:Lcom/google/android/gms/internal/ads/aki;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aki;->a(Lcom/google/android/gms/internal/ads/aki;)Lcom/google/android/gms/internal/ads/ajv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ajv;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/akp;->a:Lcom/google/android/gms/internal/ads/aki;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aki;->a(Lcom/google/android/gms/internal/ads/aki;)Lcom/google/android/gms/internal/ads/ajv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ajv;->c(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
