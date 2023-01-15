.class Lcom/google/android/gms/internal/ads/um;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ua<",
        "Lcom/google/android/gms/internal/ads/ts;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/um;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/um;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    new-instance v1, Lcom/google/android/gms/internal/ads/un;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/un;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ua;)V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/ts;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vj;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vj;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/yv;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->b()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ui;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zh;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->c()Lcom/google/android/gms/internal/ads/wz;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ui;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->c()Lcom/google/android/gms/internal/ads/wz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wz;->b()Lcom/google/android/gms/internal/ads/xd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xd;->b()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;-><init>(Lcom/google/android/gms/internal/ads/zh;Lcom/google/android/gms/internal/ads/ue;I)V

    check-cast v0, Lcom/google/android/gms/internal/ads/ts;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/um;->d(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/ts;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vj;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/yv;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->b()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ui;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zh;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->c()Lcom/google/android/gms/internal/ads/wz;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ui;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj;->c()Lcom/google/android/gms/internal/ads/wz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wz;->b()Lcom/google/android/gms/internal/ads/xd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xd;->b()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/yv;-><init>(Lcom/google/android/gms/internal/ads/zh;Lcom/google/android/gms/internal/ads/ue;I)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vl;->a(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/vl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/um;->b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/abw; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vl;

    if-nez v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vl;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vl;->a()Lcom/google/android/gms/internal/ads/vp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/vn;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vl;->b()Lcom/google/android/gms/internal/ads/xb;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acx;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/wz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vj;->d()Lcom/google/android/gms/internal/ads/vj$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/vj$a;->a(Lcom/google/android/gms/internal/ads/vn;)Lcom/google/android/gms/internal/ads/vj$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj$a;->a(Lcom/google/android/gms/internal/ads/wz;)Lcom/google/android/gms/internal/ads/vj$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vj$a;->a(I)Lcom/google/android/gms/internal/ads/vj$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abq;

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/xf;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/um;->b(Lcom/google/android/gms/internal/ads/aai;)Lcom/google/android/gms/internal/ads/acx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/vj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xf;->d()Lcom/google/android/gms/internal/ads/xf$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
