.class final Lcom/google/android/gms/ads/internal/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/bs;

.field private synthetic b:Lcom/google/android/gms/ads/internal/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bh;Lcom/google/android/gms/ads/internal/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bk;->b:Lcom/google/android/gms/ads/internal/bh;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bk;->a:Lcom/google/android/gms/ads/internal/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bk;->a:Lcom/google/android/gms/ads/internal/bs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/bs;->a()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bk;->b:Lcom/google/android/gms/ads/internal/bh;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bk;->b:Lcom/google/android/gms/ads/internal/bh;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/fx;->c()V

    :cond_0
    return-void
.end method
