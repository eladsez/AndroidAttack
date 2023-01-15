.class final Lcom/google/android/gms/internal/azr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/aa<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/p;

.field private synthetic b:Lcom/google/android/gms/internal/azo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/azo;Lcom/google/android/gms/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/azr;->b:Lcom/google/android/gms/internal/azo;

    iput-object p2, p0, Lcom/google/android/gms/internal/azr;->a:Lcom/google/android/gms/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/azr;->b:Lcom/google/android/gms/internal/azo;

    invoke-static {p1}, Lcom/google/android/gms/internal/azo;->a(Lcom/google/android/gms/internal/azo;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nu;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/azr;->a:Lcom/google/android/gms/internal/p;

    const-string p2, "/showOverlay"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/p;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
