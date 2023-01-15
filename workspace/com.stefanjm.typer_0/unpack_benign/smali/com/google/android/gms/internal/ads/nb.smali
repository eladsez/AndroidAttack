.class public final Lcom/google/android/gms/internal/ads/nb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/no;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/nc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/nc;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/nu;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/nd;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/na;Ljava/util/concurrent/Executor;)V

    return-void
.end method
