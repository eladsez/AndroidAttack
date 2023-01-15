.class final Lcom/google/android/gms/internal/amc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/amk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/amk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/alx;

.field private final b:Lcom/google/android/gms/internal/ana;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ana<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/akr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/akr<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/alx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ana<",
            "**>;",
            "Lcom/google/android/gms/internal/akr<",
            "*>;",
            "Lcom/google/android/gms/internal/alx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/amc;->b:Lcom/google/android/gms/internal/ana;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/akr;->a(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/amc;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/amc;->d:Lcom/google/android/gms/internal/akr;

    iput-object p4, p0, Lcom/google/android/gms/internal/amc;->a:Lcom/google/android/gms/internal/alx;

    return-void
.end method

.method static a(Ljava/lang/Class;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/amc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ana<",
            "**>;",
            "Lcom/google/android/gms/internal/akr<",
            "*>;",
            "Lcom/google/android/gms/internal/alx;",
            ")",
            "Lcom/google/android/gms/internal/amc<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/amc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/amc;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ana;Lcom/google/android/gms/internal/akr;Lcom/google/android/gms/internal/alx;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/amc;->b:Lcom/google/android/gms/internal/ana;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ana;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ana;->b(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/amc;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/amc;->d:Lcom/google/android/gms/internal/akr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/akr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/aku;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aku;->c()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/anr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/anr;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/amc;->d:Lcom/google/android/gms/internal/akr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/akr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/aku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aku;->b()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/akw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/akw;->c()Lcom/google/android/gms/internal/anq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/anq;->i:Lcom/google/android/gms/internal/anq;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/akw;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/akw;->e()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/gms/internal/ali;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/akw;->a()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ali;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ali;->a()Lcom/google/android/gms/internal/alg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/alk;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/anr;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/akw;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/amc;->b:Lcom/google/android/gms/internal/ana;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ana;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ana;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/anr;)V

    return-void
.end method
