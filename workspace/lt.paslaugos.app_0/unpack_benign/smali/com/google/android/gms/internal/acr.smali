.class final Lcom/google/android/gms/internal/acr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/acs;->b:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aej;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/agj;->c:Lcom/google/android/gms/internal/agj;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/agj;->b:Lcom/google/android/gms/internal/agj;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/agj;->a:Lcom/google/android/gms/internal/agj;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/adv;)Lcom/google/android/gms/internal/agk;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/acs;->c:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/agk;->b:Lcom/google/android/gms/internal/agk;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/agk;->a:Lcom/google/android/gms/internal/agk;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ael;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/acs;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ael;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "HmacSha512"

    return-object p0

    :pswitch_1
    const-string p0, "HmacSha256"

    return-object p0

    :pswitch_2
    const-string p0, "HmacSha1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/aeb;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeh;->a()Lcom/google/android/gms/internal/aej;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/aej;)Lcom/google/android/gms/internal/agj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/agh;->a(Lcom/google/android/gms/internal/agj;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aeb;->a()Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aeh;->b()Lcom/google/android/gms/internal/ael;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/acr;->a(Lcom/google/android/gms/internal/ael;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aeb;->c()Lcom/google/android/gms/internal/adv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/adv;->a:Lcom/google/android/gms/internal/adv;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aeb;->b()Lcom/google/android/gms/internal/adx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adx;->a()Lcom/google/android/gms/internal/aez;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/aby;->a(Lcom/google/android/gms/internal/aez;)Lcom/google/android/gms/internal/aeu;

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
