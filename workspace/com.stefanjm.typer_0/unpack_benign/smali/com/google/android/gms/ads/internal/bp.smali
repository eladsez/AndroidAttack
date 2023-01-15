.class final Lcom/google/android/gms/ads/internal/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/bo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bp;->a:Lcom/google/android/gms/ads/internal/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bp;->a:Lcom/google/android/gms/ads/internal/bo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bp;->a:Lcom/google/android/gms/ads/internal/bo;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bo;->a(Lcom/google/android/gms/ads/internal/bo;)Lcom/google/android/gms/internal/ads/is;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method
