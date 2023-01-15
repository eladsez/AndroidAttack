.class final Lcom/google/android/gms/internal/ace;
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/adp;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adp;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/adp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/adp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adp;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adp;->b()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ahf;->a(I)V

    new-instance v0, Lcom/google/android/gms/internal/afw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adp;->b()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/afw;-><init>([B)V

    check-cast v0, Lcom/google/android/gms/internal/abi;

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/aka;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ace;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/adp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/adp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adp;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adp;->b()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ahf;->a(I)V

    new-instance v0, Lcom/google/android/gms/internal/afw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adp;->b()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/afw;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/adr;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ace;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesGcmKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/adr;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/adr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ahf;->a(I)V

    invoke-static {}, Lcom/google/android/gms/internal/adp;->c()Lcom/google/android/gms/internal/adp$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adr;->a()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ahb;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adp$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adp$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adp$a;->a(I)Lcom/google/android/gms/internal/adp$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ace;->b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/adp;

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->e()Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

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
