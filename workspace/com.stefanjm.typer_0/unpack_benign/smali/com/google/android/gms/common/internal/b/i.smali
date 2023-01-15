.class final Lcom/google/android/gms/common/internal/b/i;
.super Lcom/google/android/gms/common/internal/b/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/b/d;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/b/k;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/internal/b/e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->A()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/b/g;

    new-instance v0, Lcom/google/android/gms/common/internal/b/d$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/b/d$a;-><init>(Lcom/google/android/gms/common/api/internal/c$b;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/b/g;->a(Lcom/google/android/gms/common/internal/b/f;)V

    return-void
.end method
