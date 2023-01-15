.class final Lcom/google/android/gms/internal/aci;
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
    invoke-static {p1}, Lcom/google/android/gms/internal/afl;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/afl;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/afl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/afl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afl;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afl;->b()Lcom/google/android/gms/internal/afn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/afn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/abt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/abs;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/abs;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/abi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ach;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afl;->b()Lcom/google/android/gms/internal/afn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afn;->b()Lcom/google/android/gms/internal/aez;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ach;-><init>(Lcom/google/android/gms/internal/aez;Lcom/google/android/gms/internal/abi;)V

    check-cast v1, Lcom/google/android/gms/internal/abi;

    return-object v1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmSEnvelopeAeadKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aci;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/afl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/afl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afl;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afl;->b()Lcom/google/android/gms/internal/afn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/afn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/abt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/abs;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/abs;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/abi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ach;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afl;->b()Lcom/google/android/gms/internal/afn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/afn;->b()Lcom/google/android/gms/internal/aez;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ach;-><init>(Lcom/google/android/gms/internal/aez;Lcom/google/android/gms/internal/abi;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/afn;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/afn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aci;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmsEnvelopeAeadKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/afn;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/afn;

    invoke-static {}, Lcom/google/android/gms/internal/afl;->c()Lcom/google/android/gms/internal/afl$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/afl$a;->a(Lcom/google/android/gms/internal/afn;)Lcom/google/android/gms/internal/afl$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/afl$a;->a(I)Lcom/google/android/gms/internal/afl$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aci;->b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/afl;

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->e()Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aeu$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aju;->j()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aeu$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/aeu$b;->e:Lcom/google/android/gms/internal/aeu$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aeu$a;->a(Lcom/google/android/gms/internal/aeu$b;)Lcom/google/android/gms/internal/aeu$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/aeu;

    return-object p1
.end method
