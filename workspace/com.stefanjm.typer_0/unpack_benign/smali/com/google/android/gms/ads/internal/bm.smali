.class final Lcom/google/android/gms/ads/internal/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/bv;

.field private final synthetic b:Lcom/google/android/gms/ads/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bj;Lcom/google/android/gms/ads/internal/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->b:Lcom/google/android/gms/ads/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bm;->a:Lcom/google/android/gms/ads/internal/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->a:Lcom/google/android/gms/ads/internal/bv;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/bv;->a()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->b:Lcom/google/android/gms/ads/internal/bj;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/internal/ads/id;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/bm;->b:Lcom/google/android/gms/ads/internal/bj;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/bj;->b:Lcom/google/android/gms/internal/ads/id;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/id;->c()V

    :cond_0
    return-void
.end method
