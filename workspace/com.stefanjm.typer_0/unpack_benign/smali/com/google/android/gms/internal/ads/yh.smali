.class public final Lcom/google/android/gms/internal/ads/yh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ts;


# instance fields
.field private final a:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yh;->a:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 9

    const v0, 0x7fffffe3

    array-length v1, p1

    if-le v1, v0, :cond_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xc

    array-length v2, p1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x10

    new-array v2, v2, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zk;->a(I)[B

    move-result-object v3

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/google/android/gms/internal/ads/yw;->a:Lcom/google/android/gms/internal/ads/yw;

    const-string v4, "AES/GCM/NoPadding"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/yw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yh;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-nez p2, :cond_1

    new-array p2, v0, [B

    :cond_1
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    const/4 v5, 0x0

    array-length v6, p1

    const/16 v8, 0xc

    move-object v3, v1

    move-object v4, p1

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    return-object v2
.end method
