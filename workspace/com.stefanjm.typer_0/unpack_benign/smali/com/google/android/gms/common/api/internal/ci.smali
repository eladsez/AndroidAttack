.class public final Lcom/google/android/gms/common/api/internal/ci;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Lcom/google/android/gms/common/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/g<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/common/api/e<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->b:Landroid/support/v4/g/a;

    new-instance v0, Lcom/google/android/gms/d/g;

    invoke-direct {v0}, Lcom/google/android/gms/d/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->c:Lcom/google/android/gms/d/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/ci;->e:Z

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Landroid/support/v4/g/a;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->b()Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Landroid/support/v4/g/a;

    invoke-virtual {p1}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/ci;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Lcom/google/android/gms/common/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->b:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/common/api/internal/ci;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/common/api/internal/ci;->d:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/ci;->e:Z

    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/internal/ci;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/ci;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/c;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/ci;->a:Landroid/support/v4/g/a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/support/v4/g/a;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/ci;->c:Lcom/google/android/gms/d/g;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/d/g;->a(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/ci;->c:Lcom/google/android/gms/d/g;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/ci;->b:Landroid/support/v4/g/a;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/d/g;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()Lcom/google/android/gms/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/d/f<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ci;->c:Lcom/google/android/gms/d/g;

    invoke-virtual {v0}, Lcom/google/android/gms/d/g;->a()Lcom/google/android/gms/d/f;

    move-result-object v0

    return-object v0
.end method
