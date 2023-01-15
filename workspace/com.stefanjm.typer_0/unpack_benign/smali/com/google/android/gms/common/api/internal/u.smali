.class public Lcom/google/android/gms/common/api/internal/u;
.super Lcom/google/android/gms/common/api/internal/cj;


# instance fields
.field private final e:Landroid/support/v4/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/b<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/api/internal/e;


# direct methods
.method private final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Landroid/support/v4/g/b;

    invoke-virtual {v0}, Landroid/support/v4/g/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/e;->a(Lcom/google/android/gms/common/api/internal/u;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/b;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/e;->b(Lcom/google/android/gms/common/b;I)V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cj;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/u;->i()V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cj;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/u;->i()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/cj;->d()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/e;->b(Lcom/google/android/gms/common/api/internal/u;)V

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/e;->d()V

    return-void
.end method

.method final g()Landroid/support/v4/g/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/b<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Landroid/support/v4/g/b;

    return-object v0
.end method
