.class final synthetic Lcom/google/android/gms/internal/ads/pa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ox;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pa;->a:Lcom/google/android/gms/internal/ads/ox;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/ox;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/pa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/pa;-><init>(Lcom/google/android/gms/internal/ads/ox;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pa;->a:Lcom/google/android/gms/internal/ads/ox;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ox;->b()V

    return-void
.end method
