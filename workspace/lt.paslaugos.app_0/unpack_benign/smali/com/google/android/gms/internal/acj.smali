.class final Lcom/google/android/gms/internal/acj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/abq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/abq<",
        "Lcom/google/android/gms/internal/abo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abo;
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/aed;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aed;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/aed;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/aed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->b()Lcom/google/android/gms/internal/aef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aeb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->b()Lcom/google/android/gms/internal/aef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->a()Lcom/google/android/gms/internal/aej;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->c()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/agh;->a(Lcom/google/android/gms/internal/agj;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lcom/google/android/gms/internal/agm;->e:Lcom/google/android/gms/internal/agm;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/agm;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/act;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->b()Lcom/google/android/gms/internal/adx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adx;->a()Lcom/google/android/gms/internal/aez;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/act;-><init>(Lcom/google/android/gms/internal/aez;)V

    new-instance p1, Lcom/google/android/gms/internal/agc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->b()Lcom/google/android/gms/internal/ael;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/ael;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->c()Lcom/google/android/gms/internal/adv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/adv;)Lcom/google/android/gms/internal/agk;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/agc;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/agk;Lcom/google/android/gms/internal/agb;)V

    check-cast p1, Lcom/google/android/gms/internal/abo;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/aka;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/acj;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abo;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/google/android/gms/internal/aed;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/aed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->b()Lcom/google/android/gms/internal/aef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aeb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->b()Lcom/google/android/gms/internal/aef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->a()Lcom/google/android/gms/internal/aej;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aed;->c()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/agh;->a(Lcom/google/android/gms/internal/agj;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lcom/google/android/gms/internal/agm;->e:Lcom/google/android/gms/internal/agm;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/agm;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/act;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->b()Lcom/google/android/gms/internal/adx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adx;->a()Lcom/google/android/gms/internal/aez;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/act;-><init>(Lcom/google/android/gms/internal/aez;)V

    new-instance p1, Lcom/google/android/gms/internal/agc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->b()Lcom/google/android/gms/internal/ael;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/ael;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->c()Lcom/google/android/gms/internal/adv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/adv;)Lcom/google/android/gms/internal/agk;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/agc;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/agk;Lcom/google/android/gms/internal/agb;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/adz;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adz;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acj;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid EciesAeadHkdf key format"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/adz;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/adz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adz;->a()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aeb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adz;->a()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeh;->a()Lcom/google/android/gms/internal/aej;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/agh;->a(Lcom/google/android/gms/internal/agj;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/agh;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/aef;->f()Lcom/google/android/gms/internal/aef$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aef$a;->a(I)Lcom/google/android/gms/internal/aef$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adz;->a()Lcom/google/android/gms/internal/aeb;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/aef$a;->a(Lcom/google/android/gms/internal/aeb;)Lcom/google/android/gms/internal/aef$a;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/aef$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aef$a;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/aef$a;->b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aef$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/aef;

    invoke-static {}, Lcom/google/android/gms/internal/aed;->e()Lcom/google/android/gms/internal/aed$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aed$a;->a(I)Lcom/google/android/gms/internal/aed$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/aed$a;->a(Lcom/google/android/gms/internal/aef;)Lcom/google/android/gms/internal/aed$a;

    move-result-object p1

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aed$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aed$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acj;->b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aed;

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->e()Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aeu$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aju;->j()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aeu$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/aeu$b;->c:Lcom/google/android/gms/internal/aeu$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aeu$a;->a(Lcom/google/android/gms/internal/aeu$b;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/aeu;

    return-object p1
.end method
