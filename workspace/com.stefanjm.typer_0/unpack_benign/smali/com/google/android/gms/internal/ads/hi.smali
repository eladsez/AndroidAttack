.class final synthetic Lcom/google/android/gms/internal/ads/hi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hg;

.field private final b:Lcom/google/android/gms/internal/ads/is;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hg;Lcom/google/android/gms/internal/ads/is;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/hg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hi;->b:Lcom/google/android/gms/internal/ads/is;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/hg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hi;->b:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hg;->a(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method
