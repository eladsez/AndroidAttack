.class final Lcom/google/android/gms/internal/ads/aif;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/google/android/gms/internal/ads/tz;


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/ahz;)Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/aif;->a:Lcom/google/android/gms/internal/ads/tz;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/asr;->bK:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "4o7tecxtkw7XaNt5hPj+0H1LvOi0SgxCIJTY9VcbazM/HSl/sFlxBFwnc8glnvoB"

    const-string v4, "RgSY6YxU2k1vLXOV3vapBnQwJDzYDlmX50wbm2tDcnw="

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/ahz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_4

    return v2

    :cond_4
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/agh;->a(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/uf;->a([B)Lcom/google/android/gms/internal/ads/ub;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/ux;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/xm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/tu;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->c()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/tu;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/ua;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm;->d()Z

    move-result v3

    invoke-static {v5, v4, v3}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ua;Z)V

    goto :goto_1

    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/va;->a(Lcom/google/android/gms/internal/ads/ub;)Lcom/google/android/gms/internal/ads/tz;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/aif;->a:Lcom/google/android/gms/internal/ads/tz;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p0, Lcom/google/android/gms/internal/ads/aif;->a:Lcom/google/android/gms/internal/ads/tz;

    if-eqz p0, :cond_9

    return v1

    :catch_0
    :cond_9
    return v2
.end method
