.class final Lcom/google/android/gms/internal/ads/un;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ua<",
        "Lcom/google/android/gms/internal/ads/zh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/vr;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vr;->a()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vr;->a()I

    move-result p0

    const/16 v0, 0x10

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/yf;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vn;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vn;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vn;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zp;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->b()Lcom/google/android/gms/internal/ads/vr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/un;->a(Lcom/google/android/gms/internal/ads/vr;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/yf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->b()Lcom/google/android/gms/internal/ads/vr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vr;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/yf;-><init>([BI)V

    check-cast v0, Lcom/google/android/gms/internal/ads/yf;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/un;->d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/yf;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vn;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zp;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->b()Lcom/google/android/gms/internal/ads/vr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/un;->a(Lcom/google/android/gms/internal/ads/vr;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/yf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->c()Lcom/google/android/gms/internal/ads/aai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aai;->b()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vn;->b()Lcom/google/android/gms/internal/ads/vr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vr;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/yf;-><init>([BI)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vp;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/un;->b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vp;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vp;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zp;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vp;->a()Lcom/google/android/gms/internal/ads/vr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/un;->a(Lcom/google/android/gms/internal/ads/vr;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/vn;->d()Lcom/google/android/gms/internal/ads/vn$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vp;->a()Lcom/google/android/gms/internal/ads/vr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vn$a;->a(Lcom/google/android/gms/internal/ads/vr;)Lcom/google/android/gms/internal/ads/vn$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vp;->b()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zk;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aai;->a([B)Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vn$a;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vn$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vn$a;->a(I)Lcom/google/android/gms/internal/ads/vn$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abq;

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xf;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/un;->b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/vn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xf;->d()Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xf$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zx;->h()Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xf$a;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/xf$b;->b:Lcom/google/android/gms/internal/ads/xf$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/xf$a;->a(Lcom/google/android/gms/internal/ads/xf$b;)Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abq;

    check-cast p1, Lcom/google/android/gms/internal/ads/xf;

    return-object p1
.end method
