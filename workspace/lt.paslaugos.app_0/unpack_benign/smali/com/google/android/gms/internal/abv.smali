.class public final Lcom/google/android/gms/internal/abv;
.super Ljava/lang/Object;


# direct methods
.method public static final a([B)Lcom/google/android/gms/internal/abr;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/afd;->a([B)Lcom/google/android/gms/internal/afd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/afd;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/afd$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/afd$b;->b()Lcom/google/android/gms/internal/aeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aeu;->c()Lcom/google/android/gms/internal/aeu$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/aeu$b;->a:Lcom/google/android/gms/internal/aeu$b;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/afd$b;->b()Lcom/google/android/gms/internal/aeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aeu;->c()Lcom/google/android/gms/internal/aeu$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/aeu$b;->b:Lcom/google/android/gms/internal/aeu$b;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/afd$b;->b()Lcom/google/android/gms/internal/aeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeu;->c()Lcom/google/android/gms/internal/aeu$b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/aeu$b;->c:Lcom/google/android/gms/internal/aeu$b;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains secret key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/abr;->a(Lcom/google/android/gms/internal/afd;)Lcom/google/android/gms/internal/abr;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
