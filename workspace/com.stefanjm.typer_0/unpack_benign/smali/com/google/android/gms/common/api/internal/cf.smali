.class public final Lcom/google/android/gms/common/api/internal/cf;
.super Lcom/google/android/gms/common/api/internal/br;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/br<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/common/api/internal/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/j$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/j$a;Lcom/google/android/gms/d/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/j$a<",
            "*>;",
            "Lcom/google/android/gms/d/g<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/br;-><init>(ILcom/google/android/gms/d/g;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/j$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/r;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/br;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cf;->b:Lcom/google/android/gms/common/api/internal/j$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bm;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/bm;->b:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/d/g;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/q;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/d/g;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/bm;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/l;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/cf;->a:Lcom/google/android/gms/d/g;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/g;->b(Ljava/lang/Object;)Z

    return-void
.end method
