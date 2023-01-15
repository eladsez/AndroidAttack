.class final Lcom/google/android/gms/internal/bez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/lv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/lv<",
        "Lcom/google/android/gms/ads/internal/js/k;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/b;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lcom/google/android/gms/internal/lq;

.field private synthetic d:Lcom/google/android/gms/internal/bey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/ads/internal/js/b;Ljava/lang/Object;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bez;->d:Lcom/google/android/gms/internal/bey;

    iput-object p2, p0, Lcom/google/android/gms/internal/bez;->a:Lcom/google/android/gms/ads/internal/js/b;

    iput-object p3, p0, Lcom/google/android/gms/internal/bez;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/bez;->c:Lcom/google/android/gms/internal/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/ads/internal/js/k;

    iget-object v0, p0, Lcom/google/android/gms/internal/bez;->d:Lcom/google/android/gms/internal/bey;

    iget-object v1, p0, Lcom/google/android/gms/internal/bez;->a:Lcom/google/android/gms/ads/internal/js/b;

    iget-object v2, p0, Lcom/google/android/gms/internal/bez;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/bez;->c:Lcom/google/android/gms/internal/lq;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/bey;->a(Lcom/google/android/gms/internal/bey;Lcom/google/android/gms/ads/internal/js/b;Lcom/google/android/gms/ads/internal/js/k;Ljava/lang/Object;Lcom/google/android/gms/internal/lq;)V

    return-void
.end method
