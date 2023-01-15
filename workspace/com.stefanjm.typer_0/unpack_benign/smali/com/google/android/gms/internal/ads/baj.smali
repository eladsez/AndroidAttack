.class final synthetic Lcom/google/android/gms/internal/ads/baj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ry;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/baf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/baf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baj;->a:Lcom/google/android/gms/internal/ads/baf;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/baf;)Lcom/google/android/gms/internal/ads/ry;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/baj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/baj;-><init>(Lcom/google/android/gms/internal/ads/baf;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/baj;->a:Lcom/google/android/gms/internal/ads/baf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/baf;->a()V

    return-void
.end method
