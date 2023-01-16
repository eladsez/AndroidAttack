.class public final Lcom/google/android/gms/internal/zzmo;
.super Lcom/google/android/gms/common/api/OptionalPendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/OptionalPendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zzagT:Lcom/google/android/gms/internal/zzly;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzly",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/OptionalPendingResult;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzly;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OptionalPendingResult can only wrap PendingResults generated by an API call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzly;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    return-void
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "time"    # J
    .param p3, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmo;, "Lcom/google/android/gms/internal/zzmo<TR;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzly;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly;->cancel()V

    return-void
.end method

.method public get()Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmo;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzmo;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is not available. Check that isDone() returns true before calling get()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly;->isReady()Z

    move-result v0

    return v0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmo;, "Lcom/google/android/gms/internal/zzmo<TR;>;"
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<-TR;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzly;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p2, "time"    # J
    .param p4, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmo;, "Lcom/google/android/gms/internal/zzmo<TR;>;"
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<-TR;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzly;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-void
.end method

.method public zzoL()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmo;->zzagT:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly;->zzoL()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method