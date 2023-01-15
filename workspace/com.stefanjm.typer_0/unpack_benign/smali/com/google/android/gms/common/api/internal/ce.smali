.class public final Lcom/google/android/gms/common/api/internal/ce;
.super Lcom/google/android/gms/common/api/internal/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/ar;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/p<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/g<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/internal/n;


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/d/g;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ce;->c:Lcom/google/android/gms/common/api/internal/n;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/n;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/g;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->a:Lcom/google/android/gms/common/api/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/d/g;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/p;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/d/g;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/ar;->a(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/ar;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/ar;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/r;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/d/g;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/r;->a(Lcom/google/android/gms/d/g;Z)V

    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->b:Lcom/google/android/gms/d/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/g;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a()[Lcom/google/android/gms/common/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->a:Lcom/google/android/gms/common/api/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/p;->a()[Lcom/google/android/gms/common/e;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->a:Lcom/google/android/gms/common/api/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/p;->b()Z

    move-result v0

    return v0
.end method
