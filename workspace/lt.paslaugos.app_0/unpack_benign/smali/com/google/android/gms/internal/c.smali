.class final Lcom/google/android/gms/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/aa<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/aza;

.field private synthetic b:Lcom/google/android/gms/internal/bji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bji;Lcom/google/android/gms/internal/aza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/c;->b:Lcom/google/android/gms/internal/bji;

    iput-object p2, p0, Lcom/google/android/gms/internal/c;->a:Lcom/google/android/gms/internal/aza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/c;->b:Lcom/google/android/gms/internal/bji;

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->a:Lcom/google/android/gms/internal/aza;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/bji;->a(Lcom/google/android/gms/internal/bji;Lcom/google/android/gms/internal/bbc;Ljava/lang/String;)V

    return-void
.end method
