.class final Lcom/google/android/gms/internal/ads/hw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/na;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/na<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/no;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hs;Lcom/google/android/gms/internal/ads/no;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hw;->a:Lcom/google/android/gms/internal/ads/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/hs;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hw;->a:Lcom/google/android/gms/internal/ads/no;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/hs;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hw;->a:Lcom/google/android/gms/internal/ads/no;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
