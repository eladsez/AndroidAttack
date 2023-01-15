.class final synthetic Lcom/google/android/gms/ads/internal/js/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/js/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/js/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/ah;->a:Lcom/google/android/gms/ads/internal/js/o;

    return-void
.end method

.method static a(Lcom/google/android/gms/ads/internal/js/o;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/js/ah;-><init>(Lcom/google/android/gms/ads/internal/js/o;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/ah;->a:Lcom/google/android/gms/ads/internal/js/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/js/o;->a()V

    return-void
.end method
