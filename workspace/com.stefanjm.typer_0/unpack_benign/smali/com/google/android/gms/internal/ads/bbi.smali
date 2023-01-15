.class final Lcom/google/android/gms/internal/ads/bbi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe<",
        "Lcom/google/android/gms/internal/ads/bae;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbh;Lcom/google/android/gms/internal/ads/bbd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbi;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/bae;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbi;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bae;->b()Lcom/google/android/gms/internal/ads/bbo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/of;->a(Ljava/lang/Object;)V

    return-void
.end method
