.class public final Lcom/google/android/gms/common/api/internal/ao;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a<",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a<",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/e/e<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ao;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/an;Lcom/google/android/gms/common/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;",
            "Lcom/google/android/gms/common/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ao;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ao;->b:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/common/api/internal/ao;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/common/api/internal/ao;->d:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/ao;->e:Z

    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/internal/ao;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/ao;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/c;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/ao;->a:Landroid/support/v4/g/a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/support/v4/g/a;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/ao;->c:Lcom/google/android/gms/e/e;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/e/e;->a(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/ao;->c:Lcom/google/android/gms/e/e;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/ao;->b:Landroid/support/v4/g/a;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/e/e;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
