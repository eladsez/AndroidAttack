.class public final Lcom/google/android/gms/internal/ads/ux;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/yd;

.field private static final b:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->b()Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abq$a;->a(Lcom/google/android/gms/internal/ads/abq;)Lcom/google/android/gms/internal/ads/abq$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yd$a;

    const-string v1, "TinkHybridDecrypt"

    const-string v2, "HybridDecrypt"

    const-string v3, "EciesAeadHkdfPrivateKey"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TinkHybridEncrypt"

    const-string v2, "HybridEncrypt"

    const-string v3, "EciesAeadHkdfPublicKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    const-string v1, "TINK_HYBRID_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/yd;

    sput-object v0, Lcom/google/android/gms/internal/ads/ux;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->b()Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ux;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abq$a;->a(Lcom/google/android/gms/internal/ads/abq;)Lcom/google/android/gms/internal/ads/abq$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yd$a;

    const-string v1, "TINK_HYBRID_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yd$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abq$a;->c()Lcom/google/android/gms/internal/ads/abq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abq;

    check-cast v0, Lcom/google/android/gms/internal/ads/yd;

    sput-object v0, Lcom/google/android/gms/internal/ads/ux;->b:Lcom/google/android/gms/internal/ads/yd;

    :try_start_0
    const-string v0, "TinkHybridEncrypt"

    new-instance v1, Lcom/google/android/gms/internal/ads/uz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/uz;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tu;)V

    const-string v0, "TinkHybridDecrypt"

    new-instance v1, Lcom/google/android/gms/internal/ads/uy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/uy;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tu;)V

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
