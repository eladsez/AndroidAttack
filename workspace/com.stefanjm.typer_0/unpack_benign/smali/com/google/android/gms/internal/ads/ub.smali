.class public final Lcom/google/android/gms/internal/ads/ub;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/xo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/xo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ub;->a:Lcom/google/android/gms/internal/ads/xo;

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/ads/xo;)Lcom/google/android/gms/internal/ads/ub;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xo;->c()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ub;-><init>(Lcom/google/android/gms/internal/ads/xo;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/xo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->a:Lcom/google/android/gms/internal/ads/xo;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->a:Lcom/google/android/gms/internal/ads/xo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uj;->a(Lcom/google/android/gms/internal/ads/xo;)Lcom/google/android/gms/internal/ads/xq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
