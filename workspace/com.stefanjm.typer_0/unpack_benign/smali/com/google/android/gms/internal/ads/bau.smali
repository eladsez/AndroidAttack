.class final synthetic Lcom/google/android/gms/internal/ads/bau;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bae;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bau;->a:Lcom/google/android/gms/internal/ads/bae;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/bae;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bau;-><init>(Lcom/google/android/gms/internal/ads/bae;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bau;->a:Lcom/google/android/gms/internal/ads/bae;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bae;->a()V

    return-void
.end method
