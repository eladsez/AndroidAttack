.class abstract Lcom/google/android/gms/internal/e/dd;
.super Lcom/google/android/gms/internal/e/dc;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ce;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/dc;-><init>(Lcom/google/android/gms/internal/e/ce;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/e/dd;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/e/ce;->a(Lcom/google/android/gms/internal/e/dd;)V

    return-void
.end method


# virtual methods
.method final P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/dd;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final Q()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->P()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/dd;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dd;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->G()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/dd;->a:Z

    :cond_1
    return-void
.end method

.method public final S()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/e/dd;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/dd;->x_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dd;->q:Lcom/google/android/gms/internal/e/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/ce;->G()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/e/dd;->a:Z

    return-void
.end method

.method protected abstract w()Z
.end method

.method protected x_()V
    .locals 0

    return-void
.end method
