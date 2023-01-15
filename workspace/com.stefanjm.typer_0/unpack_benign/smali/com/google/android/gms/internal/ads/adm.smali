.class final Lcom/google/android/gms/internal/ads/adm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/acx;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/adn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/acx;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adm;->a:Lcom/google/android/gms/internal/ads/acx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adm;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/adn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/adn;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->a(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/abq$e;->h:I

    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/abq$e;->i:I

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->a(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/acx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->a:Lcom/google/android/gms/internal/ads/acx;

    return-object v0
.end method

.method final d()Lcom/google/android/gms/internal/ads/adn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->b(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->c(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->d(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->e(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->f(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method

.method final j()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->g(Lcom/google/android/gms/internal/ads/adn;)[I

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->h(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->c:Lcom/google/android/gms/internal/ads/adn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/adn;->i(Lcom/google/android/gms/internal/ads/adn;)I

    move-result v0

    return v0
.end method
