.class public final Lcom/google/android/gms/internal/arq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/b;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/asr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/asr;-><init>(Lcom/google/android/gms/internal/arq;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/arq;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ban<",
            "*>;",
            "Lcom/google/android/gms/internal/bgr<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/arq;->a(Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ban<",
            "*>;",
            "Lcom/google/android/gms/internal/bgr<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ban;->k()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/arq;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ats;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ats;-><init>(Lcom/google/android/gms/internal/arq;Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/df;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ban<",
            "*>;",
            "Lcom/google/android/gms/internal/df;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/bgr;->a(Lcom/google/android/gms/internal/df;)Lcom/google/android/gms/internal/bgr;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/arq;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ats;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/ats;-><init>(Lcom/google/android/gms/internal/arq;Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
