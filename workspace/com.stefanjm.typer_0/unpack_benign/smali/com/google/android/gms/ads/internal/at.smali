.class final Lcom/google/android/gms/ads/internal/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/at;->a:Lcom/google/android/gms/ads/internal/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/at;->a:Lcom/google/android/gms/ads/internal/ar;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/ar;->b(Lcom/google/android/gms/ads/internal/ar;)Lcom/google/android/gms/internal/ads/ahi;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/at;->a:Lcom/google/android/gms/ads/internal/ar;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/ar;->b(Lcom/google/android/gms/ads/internal/ar;)Lcom/google/android/gms/internal/ads/ahi;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ahi;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
