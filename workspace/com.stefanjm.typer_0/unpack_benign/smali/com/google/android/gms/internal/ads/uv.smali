.class final Lcom/google/android/gms/internal/ads/uv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ua<",
        "Lcom/google/android/gms/internal/ads/ty;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/ty;
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wo;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wo;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wo;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->b()Lcom/google/android/gms/internal/ads/wq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->b()Lcom/google/android/gms/internal/ads/wq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->a()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wu;)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/yt;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/yw;->e:Lcom/google/android/gms/internal/ads/yw;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/yw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->b()Lcom/google/android/gms/internal/ads/wi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wi;->a()Lcom/google/android/gms/internal/ads/xk;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/ve;-><init>(Lcom/google/android/gms/internal/ads/xk;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/ym;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->b()Lcom/google/android/gms/internal/ads/wx;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wx;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->c()Lcom/google/android/gms/internal/ads/wg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wg;)Lcom/google/android/gms/internal/ads/yu;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ym;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/yl;)V

    check-cast p1, Lcom/google/android/gms/internal/ads/ty;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

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

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aai;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uv;->d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/ty;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wo;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->b()Lcom/google/android/gms/internal/ads/wq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->b()Lcom/google/android/gms/internal/ads/wq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->a()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wu;)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wo;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/yt;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/yw;->e:Lcom/google/android/gms/internal/ads/yw;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/yw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->b()Lcom/google/android/gms/internal/ads/wi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wi;->a()Lcom/google/android/gms/internal/ads/xk;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/ve;-><init>(Lcom/google/android/gms/internal/ads/xk;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/ym;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->b()Lcom/google/android/gms/internal/ads/wx;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wx;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->c()Lcom/google/android/gms/internal/ads/wg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wg;)Lcom/google/android/gms/internal/ads/yu;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ym;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/yl;)V

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wk;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wk;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/uv;->b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid EciesAeadHkdf key format"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wk;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wk;->a()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wk;->a()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws;->a()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wu;)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/yt;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yr;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wq;->e()Lcom/google/android/gms/internal/ads/wq$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wq$a;->a(I)Lcom/google/android/gms/internal/ads/wq$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wk;->a()Lcom/google/android/gms/internal/ads/wm;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/wq$a;->a(Lcom/google/android/gms/internal/ads/wm;)Lcom/google/android/gms/internal/ads/wq$a;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aai;->a([B)Lcom/google/android/gms/internal/ads/aai;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/wq$a;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wq$a;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aai;->a([B)Lcom/google/android/gms/internal/ads/aai;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/wq$a;->b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wq$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abq;

    check-cast p1, Lcom/google/android/gms/internal/ads/wq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/wo;->d()Lcom/google/android/gms/internal/ads/wo$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/wo$a;->a(I)Lcom/google/android/gms/internal/ads/wo$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/wo$a;->a(Lcom/google/android/gms/internal/ads/wq;)Lcom/google/android/gms/internal/ads/wo$a;

    move-result-object p1

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aai;->a([B)Lcom/google/android/gms/internal/ads/aai;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/wo$a;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wo$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abq;

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xf;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/uv;->b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/wo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xf;->d()Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xf$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zx;->h()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xf$a;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/xf$b;->c:Lcom/google/android/gms/internal/ads/xf$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/xf$a;->a(Lcom/google/android/gms/internal/ads/xf$b;)Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abq;

    check-cast p1, Lcom/google/android/gms/internal/ads/xf;

    return-object p1
.end method
