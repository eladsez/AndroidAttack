.class final synthetic Lcom/google/android/gms/ads/internal/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sa;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/is;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/is;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bx;->a:Lcom/google/android/gms/internal/ads/is;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bx;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bx;->a:Lcom/google/android/gms/internal/ads/is;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bx;->b:Ljava/lang/Runnable;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/is;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
