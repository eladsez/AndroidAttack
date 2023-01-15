.class public final Lcom/google/android/gms/common/api/internal/al;
.super Lcom/google/android/gms/common/api/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/f<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/google/android/gms/common/api/internal/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/x<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/e/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/x<",
            "*>;",
            "Lcom/google/android/gms/e/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/f;-><init>(ILcom/google/android/gms/e/e;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/al;->b:Lcom/google/android/gms/common/api/internal/x;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/b;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/f;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/al;->b:Lcom/google/android/gms/common/api/internal/x;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aa;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/aa;->b:Lcom/google/android/gms/common/api/internal/ak;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/al;->a:Lcom/google/android/gms/e/e;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/ak;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/e/e;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/aa;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/z;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/al;->a:Lcom/google/android/gms/e/e;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/e/e;->b(Ljava/lang/Object;)Z

    return-void
.end method
