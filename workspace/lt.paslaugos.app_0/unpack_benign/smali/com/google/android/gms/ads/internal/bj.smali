.class final Lcom/google/android/gms/ads/internal/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/bs;

.field private synthetic b:Lcom/google/android/gms/ads/internal/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bh;Lcom/google/android/gms/ads/internal/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/ads/internal/bh;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/ads/internal/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bj;->a:Lcom/google/android/gms/ads/internal/bs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/bs;->a()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/ads/internal/bh;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/ads/internal/bh;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/bh;->b:Lcom/google/android/gms/internal/fx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/fx;->c()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
