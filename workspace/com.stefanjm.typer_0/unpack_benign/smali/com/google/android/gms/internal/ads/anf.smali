.class public final Lcom/google/android/gms/internal/ads/anf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/b;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/aog;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/aog;-><init>(Lcom/google/android/gms/internal/ads/anf;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anf;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/anf;->a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/awk;->k()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anf;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/apf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/apf;-><init>(Lcom/google/android/gms/internal/ads/anf;Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/df;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/df;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bcm;->a(Lcom/google/android/gms/internal/ads/df;)Lcom/google/android/gms/internal/ads/bcm;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anf;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/apf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/apf;-><init>(Lcom/google/android/gms/internal/ads/anf;Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
