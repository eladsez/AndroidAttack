.class final synthetic Lcom/google/android/gms/ads/internal/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pn;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/l;

.field private final b:Lcom/google/android/gms/internal/gl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/l;Lcom/google/android/gms/internal/gl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m;->a:Lcom/google/android/gms/ads/internal/l;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/m;->b:Lcom/google/android/gms/internal/gl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->b:Lcom/google/android/gms/internal/gl;

    new-instance v2, Lcom/google/android/gms/internal/aqg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->c:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/aqg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gl;->b:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/aqg;->a(Lcom/google/android/gms/internal/aqk;)V

    return-void
.end method
