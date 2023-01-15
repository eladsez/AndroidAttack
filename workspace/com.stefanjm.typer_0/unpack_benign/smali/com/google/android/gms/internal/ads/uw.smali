.class final Lcom/google/android/gms/internal/ads/uw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ua<",
        "Lcom/google/android/gms/internal/ads/tz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/tz;
    .locals 10

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wq;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/wq;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wq;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->a()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wu;)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->d()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/yt;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->b()Lcom/google/android/gms/internal/ads/wi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wi;->a()Lcom/google/android/gms/internal/ads/xk;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/ve;-><init>(Lcom/google/android/gms/internal/ads/xk;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/yn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->b()Lcom/google/android/gms/internal/ads/wx;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wx;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->c()Lcom/google/android/gms/internal/ads/wg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wg;)Lcom/google/android/gms/internal/ads/yu;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/yn;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/yl;)V

    check-cast p1, Lcom/google/android/gms/internal/ads/tz;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPublicKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uw;->d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/tz;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wq;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->b()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->a()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wu;)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wq;->d()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/yt;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->b()Lcom/google/android/gms/internal/ads/wi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wi;->a()Lcom/google/android/gms/internal/ads/xk;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/ve;-><init>(Lcom/google/android/gms/internal/ads/xk;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/yn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws;->b()Lcom/google/android/gms/internal/ads/wx;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wx;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm;->c()Lcom/google/android/gms/internal/ads/wg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/wg;)Lcom/google/android/gms/internal/ads/yu;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/yn;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/yl;)V

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;
    .locals 1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;
    .locals 1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xf;
    .locals 1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
