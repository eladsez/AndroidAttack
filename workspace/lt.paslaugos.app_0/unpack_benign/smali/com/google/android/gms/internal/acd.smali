.class final Lcom/google/android/gms/internal/acd;
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
    invoke-static {p1}, Lcom/google/android/gms/internal/adi;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adi;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/adi;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/adi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ahf;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->b()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adn;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->b()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adn;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/afv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->b()Lcom/google/android/gms/internal/adn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adn;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/afv;-><init>([BI)V

    check-cast v0, Lcom/google/android/gms/internal/abi;

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesEaxKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/acd;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/adi;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/adi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ahf;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->b()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adn;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->b()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adn;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/afv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adi;->b()Lcom/google/android/gms/internal/adn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adn;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/afv;-><init>([BI)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/adk;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adk;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acd;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesEaxKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/adk;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/adk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adk;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ahf;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adk;->a()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adn;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adk;->a()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adn;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/adi;->e()Lcom/google/android/gms/internal/adi$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adk;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ahb;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adi$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adi$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adk;->a()Lcom/google/android/gms/internal/adn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adi$a;->a(Lcom/google/android/gms/internal/adn;)Lcom/google/android/gms/internal/adi$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adi$a;->a(I)Lcom/google/android/gms/internal/adi$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/acd;->b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/adi;

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->e()Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

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
