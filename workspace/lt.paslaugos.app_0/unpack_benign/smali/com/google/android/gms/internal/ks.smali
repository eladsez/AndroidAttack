.class public final Lcom/google/android/gms/internal/ks;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/lf;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/kt;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/kr;Ljava/util/concurrent/Executor;)V

    return-void
.end method
