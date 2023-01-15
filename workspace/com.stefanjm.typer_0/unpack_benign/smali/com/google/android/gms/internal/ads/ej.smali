.class final Lcom/google/android/gms/internal/ads/ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/eh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eh;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ej;->c:Lcom/google/android/gms/internal/ads/eh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ej;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ej;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej;->c:Lcom/google/android/gms/internal/ads/eh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/eh;->e()Lcom/google/android/gms/internal/ads/baq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/baq;->b(Lcom/google/android/gms/internal/ads/ahi;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/eh;->a(Lcom/google/android/gms/internal/ads/eh;Lcom/google/android/gms/internal/ads/bbd;)Lcom/google/android/gms/internal/ads/bbd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej;->c:Lcom/google/android/gms/internal/ads/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eh;->b(Lcom/google/android/gms/internal/ads/eh;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ek;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ek;-><init>(Lcom/google/android/gms/internal/ads/ej;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/el;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/el;-><init>(Lcom/google/android/gms/internal/ads/ej;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    return-void
.end method
