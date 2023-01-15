.class final Lcom/google/android/gms/internal/ads/bbf;
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


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbf;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bbf;->a:Lcom/google/android/gms/internal/ads/bbd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/bbd;)Lcom/google/android/gms/internal/ads/bbh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbh;->d()V

    return-void
.end method
