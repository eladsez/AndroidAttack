.class final Lcom/google/android/gms/internal/aqd;
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
.field private synthetic a:Lcom/google/android/gms/internal/apw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/apw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aqd;->a:Lcom/google/android/gms/internal/apw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/aqd;->a:Lcom/google/android/gms/internal/apw;

    invoke-static {p1}, Lcom/google/android/gms/internal/apw;->a(Lcom/google/android/gms/internal/apw;)Lcom/google/android/gms/internal/apg;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/apg;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/aqd;->a:Lcom/google/android/gms/internal/apw;

    invoke-static {p1}, Lcom/google/android/gms/internal/apw;->a(Lcom/google/android/gms/internal/apw;)Lcom/google/android/gms/internal/apg;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/apg;->c(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
