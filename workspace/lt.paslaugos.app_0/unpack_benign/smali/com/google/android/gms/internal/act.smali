.class final Lcom/google/android/gms/internal/act;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/agb;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/adp;

.field private d:Lcom/google/android/gms/internal/acy;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aez;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aez;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aez;->b()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/adr;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adr;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aby;->b(Lcom/google/android/gms/internal/aez;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/adp;

    iput-object p1, p0, Lcom/google/android/gms/internal/act;->c:Lcom/google/android/gms/internal/adp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adr;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/act;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aez;->b()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ada;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/ada;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aby;->b(Lcom/google/android/gms/internal/aez;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/acy;

    iput-object p1, p0, Lcom/google/android/gms/internal/act;->d:Lcom/google/android/gms/internal/acy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ada;->a()Lcom/google/android/gms/internal/ade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ade;->b()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/act;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ada;->b()Lcom/google/android/gms/internal/aeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aeq;->b()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/act;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/act;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ale; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/act;->b:I

    return v0
.end method

.method public final a([B)Lcom/google/android/gms/internal/abi;
    .locals 3

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/act;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/adp;->c()Lcom/google/android/gms/internal/adp$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->c:Lcom/google/android/gms/internal/adp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adp$a;

    iget v2, p0, Lcom/google/android/gms/internal/act;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/aka;->a([BII)Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adp$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adp$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/adp;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aby;->b(Ljava/lang/String;Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/abi;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->a:Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/act;->e:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/act;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/act;->b:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/adc;->e()Lcom/google/android/gms/internal/adc$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->d:Lcom/google/android/gms/internal/acy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acy;->b()Lcom/google/android/gms/internal/adc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/adc$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/adc$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adc$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/adc;

    invoke-static {}, Lcom/google/android/gms/internal/aeo;->e()Lcom/google/android/gms/internal/aeo$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->d:Lcom/google/android/gms/internal/acy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acy;->c()Lcom/google/android/gms/internal/aeo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aeo$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/aka;->a([B)Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/aeo$a;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeo$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/aeo;

    invoke-static {}, Lcom/google/android/gms/internal/acy;->e()Lcom/google/android/gms/internal/acy$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->d:Lcom/google/android/gms/internal/acy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acy;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/acy$a;->a(I)Lcom/google/android/gms/internal/acy$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/acy$a;->a(Lcom/google/android/gms/internal/adc;)Lcom/google/android/gms/internal/acy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/acy$a;->a(Lcom/google/android/gms/internal/aeo;)Lcom/google/android/gms/internal/acy$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/acy;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
