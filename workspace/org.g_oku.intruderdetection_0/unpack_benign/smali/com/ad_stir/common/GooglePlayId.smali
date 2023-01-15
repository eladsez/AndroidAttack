.class public Lcom/ad_stir/common/GooglePlayId;
.super Ljava/lang/Object;
.source "GooglePlayId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapterImpl;,
        Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;,
        Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;,
        Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static encodeAES(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "gid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 18
    if-nez p0, :cond_0

    move-object v1, v9

    .line 45
    :goto_0
    return-object v1

    .line 19
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 22
    const-string v10, "SHA-256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 23
    .local v7, "md":Ljava/security/MessageDigest;
    const-string v10, "Nar6FWee"

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 24
    .local v4, "digest":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v6, v4, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    .local v6, "key":Ljava/security/Key;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v10, "5GUNjveGqIy7x5JW"

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    .local v0, "Iv":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v10, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 33
    .local v8, "src":[B
    const-string v10, "AES/CBC/PKCS5Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 34
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v2, v10, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 35
    invoke-virtual {v2, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 38
    .local v3, "code":[B
    const/16 v10, 0x10

    invoke-static {v3, v10}, Lcom/ad_stir/common/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "b64str":Ljava/lang/String;
    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0    # "Iv":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v1    # "b64str":Ljava/lang/String;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "code":[B
    .end local v4    # "digest":[B
    .end local v6    # "key":Ljava/security/Key;
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "src":[B
    :catch_0
    move-exception v5

    .line 43
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    move-object v1, v9

    .line 45
    goto :goto_0
.end method

.method public static getGooglePlayId(Landroid/content/Context;Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;

    new-instance v2, Lcom/ad_stir/common/GooglePlayId$1;

    invoke-direct {v2, p1}, Lcom/ad_stir/common/GooglePlayId$1;-><init>(Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V

    invoke-direct {v1, p0, v2}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdRunnable;-><init>(Landroid/content/Context;Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method
