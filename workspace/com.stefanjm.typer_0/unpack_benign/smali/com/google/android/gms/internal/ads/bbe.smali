.class final Lcom/google/android/gms/internal/ads/bbe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe<",
        "Lcom/google/android/gms/internal/ads/bbn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/bbn;

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/internal/ads/bbo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bbo;->a()V

    return-void
.end method
