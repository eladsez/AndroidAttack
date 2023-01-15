.class public final Lcom/google/android/gms/internal/aca;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/afs;

.field private static b:Lcom/google/android/gms/internal/afs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/afs;->b()Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/acx;->a:Lcom/google/android/gms/internal/afs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/afs$a;

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesCtrHmacAeadKey"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/abl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/afb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Lcom/google/android/gms/internal/afb;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesEaxKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/abl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/afb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Lcom/google/android/gms/internal/afb;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "AesGcmKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/abl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/afb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Lcom/google/android/gms/internal/afb;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "ChaCha20Poly1305Key"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/abl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/afb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Lcom/google/android/gms/internal/afb;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsAeadKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/abl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/afb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Lcom/google/android/gms/internal/afb;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    const-string v1, "TinkAead"

    const-string v2, "Aead"

    const-string v3, "KmsEnvelopeAeadKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/abl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/afb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Lcom/google/android/gms/internal/afb;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    const-string v1, "TINK_AEAD_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/afs;

    sput-object v0, Lcom/google/android/gms/internal/aca;->a:Lcom/google/android/gms/internal/afs;

    invoke-static {}, Lcom/google/android/gms/internal/afs;->b()Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/aca;->a:Lcom/google/android/gms/internal/afs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aky$a;->a(Lcom/google/android/gms/internal/aky;)Lcom/google/android/gms/internal/aky$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/afs$a;

    const-string v1, "TINK_AEAD_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/afs$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/afs$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aky$a;->d()Lcom/google/android/gms/internal/aky;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/afs;

    sput-object v0, Lcom/google/android/gms/internal/aca;->b:Lcom/google/android/gms/internal/afs;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/aca;->a()V
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

    new-instance v1, Lcom/google/android/gms/internal/abz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/abz;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aby;->a(Ljava/lang/String;Lcom/google/android/gms/internal/abj;)V

    invoke-static {}, Lcom/google/android/gms/internal/acx;->a()V

    return-void
.end method
