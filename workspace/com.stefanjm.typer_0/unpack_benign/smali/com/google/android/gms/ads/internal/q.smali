.class final Lcom/google/android/gms/ads/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private final synthetic b:Lcom/google/android/gms/ads/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/p;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/q;->b:Lcom/google/android/gms/ads/internal/p;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/q;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->c()Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/q;->b:Lcom/google/android/gms/ads/internal/p;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/p;->a:Lcom/google/android/gms/ads/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/ads/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/q;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/l;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
