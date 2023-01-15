.class public final Lcom/google/android/gms/internal/ads/ul;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/yd;

.field private static final b:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->b()Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/vi;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abq$a;->a(Lcom/google/android/gms/internal/ads/abq;)Lcom/google/android/gms/internal/ads/abq$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yd$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesCtrHmacAeadKey"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesEaxKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesGcmKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "ChaCha20Poly1305Key"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsAeadKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsEnvelopeAeadKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TINK_AEAD_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/yd;

    sput-object v0, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->b()Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abq$a;->a(Lcom/google/android/gms/internal/ads/abq;)Lcom/google/android/gms/internal/ads/abq$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yd$a;

    const-string v1, "TINK_AEAD_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/yd;

    sput-object v0, Lcom/google/android/gms/internal/ads/ul;->b:Lcom/google/android/gms/internal/ads/yd;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ul;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    const-string v0, "TinkAead"

    new-instance v1, Lcom/google/android/gms/internal/ads/uk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/uk;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/vi;->a()V

    return-void
.end method
