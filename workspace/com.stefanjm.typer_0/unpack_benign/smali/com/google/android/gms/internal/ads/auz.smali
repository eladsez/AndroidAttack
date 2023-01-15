.class final Lcom/google/android/gms/internal/ads/auz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aum;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/auy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/auy;Lcom/google/android/gms/internal/ads/aum;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/auz;->b:Lcom/google/android/gms/internal/ads/auy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/auz;->a:Lcom/google/android/gms/internal/ads/aum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/auz;->b:Lcom/google/android/gms/internal/ads/auy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/auz;->a:Lcom/google/android/gms/internal/ads/aum;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/auy;->a(Lcom/google/android/gms/internal/ads/auy;Lcom/google/android/gms/internal/ads/aum;)V

    return-void
.end method
