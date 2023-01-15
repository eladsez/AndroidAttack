.class public final Lcom/google/android/gms/internal/ads/uf;
.super Ljava/lang/Object;


# direct methods
.method public static final a([B)Lcom/google/android/gms/internal/ads/ub;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/xo;->a([B)Lcom/google/android/gms/internal/ads/xo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xo$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xo$b;->b()Lcom/google/android/gms/internal/ads/xf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xf;->c()Lcom/google/android/gms/internal/ads/xf$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/xf$b;->a:Lcom/google/android/gms/internal/ads/xf$b;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xo$b;->b()Lcom/google/android/gms/internal/ads/xf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xf;->c()Lcom/google/android/gms/internal/ads/xf$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/xf$b;->b:Lcom/google/android/gms/internal/ads/xf$b;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xo$b;->b()Lcom/google/android/gms/internal/ads/xf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xf;->c()Lcom/google/android/gms/internal/ads/xf$b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/xf$b;->c:Lcom/google/android/gms/internal/ads/xf$b;

    if-ne v1, v2, :cond_0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains secret key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ub;->a(Lcom/google/android/gms/internal/ads/xo;)Lcom/google/android/gms/internal/ads/ub;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
