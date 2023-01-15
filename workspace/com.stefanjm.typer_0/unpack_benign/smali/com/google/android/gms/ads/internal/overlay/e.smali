.class final synthetic Lcom/google/android/gms/ads/internal/overlay/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rx;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/overlay/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/e;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/e;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/d;->c:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qo;->o()V

    return-void
.end method
