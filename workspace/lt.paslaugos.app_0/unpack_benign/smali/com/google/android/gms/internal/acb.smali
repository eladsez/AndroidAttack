.class Lcom/google/android/gms/internal/acb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/abq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/abq<",
        "Lcom/google/android/gms/internal/abi;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/acb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/acb;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    new-instance v1, Lcom/google/android/gms/internal/acc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/acc;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aby;->a(Ljava/lang/String;Lcom/google/android/gms/internal/abq;)V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/acy;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/acy;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/acy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/acy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    new-instance v0, Lcom/google/android/gms/internal/agl;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->b()Lcom/google/android/gms/internal/adc;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aby;->b(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/agy;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->c()Lcom/google/android/gms/internal/aeo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aby;->b(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/abu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->c()Lcom/google/android/gms/internal/aeo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aeo;->b()Lcom/google/android/gms/internal/aes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aes;->b()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/agl;-><init>(Lcom/google/android/gms/internal/agy;Lcom/google/android/gms/internal/abu;I)V

    check-cast v0, Lcom/google/android/gms/internal/abi;

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

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

.method public final synthetic a(Lcom/google/android/gms/internal/aka;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/acb;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/acy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/acy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    new-instance v0, Lcom/google/android/gms/internal/agl;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->b()Lcom/google/android/gms/internal/adc;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/aby;->b(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/agy;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->c()Lcom/google/android/gms/internal/aeo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aby;->b(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/abu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acy;->c()Lcom/google/android/gms/internal/aeo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aeo;->b()Lcom/google/android/gms/internal/aes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aes;->b()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/agl;-><init>(Lcom/google/android/gms/internal/agy;Lcom/google/android/gms/internal/abu;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ada;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/ada;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acb;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ada;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ada;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ada;->a()Lcom/google/android/gms/internal/ade;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aby;->a(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adc;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ada;->b()Lcom/google/android/gms/internal/aeq;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/aby;->a(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aeo;

    invoke-static {}, Lcom/google/android/gms/internal/acy;->e()Lcom/google/android/gms/internal/acy$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/acy$a;->a(Lcom/google/android/gms/internal/adc;)Lcom/google/android/gms/internal/acy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/acy$a;->a(Lcom/google/android/gms/internal/aeo;)Lcom/google/android/gms/internal/acy$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acy$a;->a(I)Lcom/google/android/gms/internal/acy$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acb;->b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/acy;

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->e()Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aeu$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aju;->j()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aeu$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/aeu$b;->b:Lcom/google/android/gms/internal/aeu$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aeu$a;->a(Lcom/google/android/gms/internal/aeu$b;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/aeu;

    return-object p1
.end method
