.class final synthetic Lcom/google/android/gms/ads/internal/js/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/js/p;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/js/z;

.field private final b:Lcom/google/android/gms/ads/internal/js/f;

.field private final c:Lcom/google/android/gms/ads/internal/js/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/ab;->a:Lcom/google/android/gms/ads/internal/js/z;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/ab;->b:Lcom/google/android/gms/ads/internal/js/f;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/ab;->c:Lcom/google/android/gms/ads/internal/js/o;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/ab;->a:Lcom/google/android/gms/ads/internal/js/z;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/ab;->b:Lcom/google/android/gms/ads/internal/js/f;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/ab;->c:Lcom/google/android/gms/ads/internal/js/o;

    sget-object v3, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/js/ac;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/ac;-><init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V

    sget v0, Lcom/google/android/gms/ads/internal/js/ak;->b:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
