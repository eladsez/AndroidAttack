.class abstract Lcom/google/android/gms/internal/wc;
.super Lcom/google/android/gms/internal/wb;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wb;-><init>(Lcom/google/android/gms/internal/vc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/wc;->p:Lcom/google/android/gms/internal/vc;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/wc;)V

    return-void
.end method


# virtual methods
.method final P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wc;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final Q()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final R()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wc;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->p:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->F()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wc;->a:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wc;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wc;->p_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->p:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->F()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wc;->a:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected p_()V
    .locals 0

    return-void
.end method

.method protected abstract w()Z
.end method
