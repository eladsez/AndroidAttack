.class final Lcom/google/android/gms/internal/ads/sg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/id;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/sd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sd;Lcom/google/android/gms/internal/ads/id;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sg;->b:Lcom/google/android/gms/internal/ads/sd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sg;->a:Lcom/google/android/gms/internal/ads/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sg;->b:Lcom/google/android/gms/internal/ads/sd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sg;->a:Lcom/google/android/gms/internal/ads/id;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/sd;->a(Lcom/google/android/gms/internal/ads/sd;Landroid/view/View;Lcom/google/android/gms/internal/ads/id;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
