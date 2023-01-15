.class final Lcom/google/android/gms/internal/acf;
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

.method private static b()Lcom/google/android/gms/internal/adt;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/adt;->c()Lcom/google/android/gms/internal/adt$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adt$a;->a(I)Lcom/google/android/gms/internal/adt$a;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/ahb;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adt$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adt$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/adt;

    return-object v0
.end method

.method private final d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/adt;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adt;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/adt;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/adt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adt;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adt;->b()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/aga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adt;->b()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/aga;-><init>([B)V

    check-cast v0, Lcom/google/android/gms/internal/abi;

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected ChaCha20Poly1305Key proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid ChaCha20Poly1305 key"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/acf;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/adt;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/adt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adt;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adt;->b()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/aga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adt;->b()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/aga;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected ChaCha20Poly1305Key proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/acf;->b()Lcom/google/android/gms/internal/adt;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/acf;->b()Lcom/google/android/gms/internal/adt;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/acf;->b()Lcom/google/android/gms/internal/adt;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->e()Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

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
