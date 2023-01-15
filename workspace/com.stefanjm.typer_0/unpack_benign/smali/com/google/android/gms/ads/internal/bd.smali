.class final synthetic Lcom/google/android/gms/ads/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/an;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/an;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bd;->a:Lcom/google/android/gms/ads/internal/an;

    return-void
.end method

.method static a(Lcom/google/android/gms/ads/internal/an;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/bd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/bd;-><init>(Lcom/google/android/gms/ads/internal/an;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bd;->a:Lcom/google/android/gms/ads/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/an;->c()V

    return-void
.end method
