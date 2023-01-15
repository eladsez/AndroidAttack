.class final Lcom/google/android/gms/internal/ads/qt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/id;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/qp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qp;Lcom/google/android/gms/internal/ads/id;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/qp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qt;->a:Lcom/google/android/gms/internal/ads/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/qp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->a:Lcom/google/android/gms/internal/ads/id;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/qp;->a(Lcom/google/android/gms/internal/ads/qp;Landroid/view/View;Lcom/google/android/gms/internal/ads/id;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
