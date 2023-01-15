.class final Lcom/google/android/gms/internal/ack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/abq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/abq<",
        "Lcom/google/android/gms/internal/abp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abp;
    .locals 10

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/aef;->a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aef;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/aef;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/aef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aeb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->a()Lcom/google/android/gms/internal/aej;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->e()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/agh;->a(Lcom/google/android/gms/internal/agj;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/act;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->b()Lcom/google/android/gms/internal/adx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adx;->a()Lcom/google/android/gms/internal/aez;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/act;-><init>(Lcom/google/android/gms/internal/aez;)V

    new-instance p1, Lcom/google/android/gms/internal/agd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->b()Lcom/google/android/gms/internal/ael;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/ael;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->c()Lcom/google/android/gms/internal/adv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/adv;)Lcom/google/android/gms/internal/agk;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/agd;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/agk;Lcom/google/android/gms/internal/agb;)V

    check-cast p1, Lcom/google/android/gms/internal/abp;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ale; {:try_start_0 .. :try_end_0} :catch_0

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

.method public final synthetic a(Lcom/google/android/gms/internal/aka;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ack;->d(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/abp;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/alx;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/google/android/gms/internal/aef;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/aef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ahf;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aeb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->b()Lcom/google/android/gms/internal/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->a()Lcom/google/android/gms/internal/aej;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aef;->e()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/agh;->a(Lcom/google/android/gms/internal/agj;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/act;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->b()Lcom/google/android/gms/internal/adx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adx;->a()Lcom/google/android/gms/internal/aez;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/act;-><init>(Lcom/google/android/gms/internal/aez;)V

    new-instance p1, Lcom/google/android/gms/internal/agd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aka;->c()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aeh;->b()Lcom/google/android/gms/internal/ael;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/ael;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeb;->c()Lcom/google/android/gms/internal/adv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/adv;)Lcom/google/android/gms/internal/agk;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/agd;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/agk;Lcom/google/android/gms/internal/agb;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/alx;
    .locals 1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu;
    .locals 1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
