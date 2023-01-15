.class final Lcom/google/android/gms/internal/ads/bbk;
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
.field final synthetic a:Lcom/google/android/gms/internal/ads/bbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbk;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/bae;

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/bbm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bbm;-><init>(Lcom/google/android/gms/internal/ads/bbk;Lcom/google/android/gms/internal/ads/bae;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
