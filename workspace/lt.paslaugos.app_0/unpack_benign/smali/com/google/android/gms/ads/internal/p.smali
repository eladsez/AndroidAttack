.class final Lcom/google/android/gms/ads/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private synthetic b:Lcom/google/android/gms/ads/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/o;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/p;->b:Lcom/google/android/gms/ads/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/p;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->c()Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/p;->b:Lcom/google/android/gms/ads/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/o;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/p;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/l;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
