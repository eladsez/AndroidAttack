.class final Lcom/google/android/gms/internal/ads/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/ae<",
        "Lcom/google/android/gms/internal/ads/qo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/qo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/nz;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu;Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/nz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ca;->c:Lcom/google/android/gms/internal/ads/bu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ca;->a:Lcom/google/android/gms/internal/ads/qo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/nz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    :try_start_0
    const-string p1, "success"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "failure"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    move-object v3, p2

    move p2, p1

    move-object p1, v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->c:Lcom/google/android/gms/internal/ads/bu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bu;->a(Lcom/google/android/gms/internal/ads/bu;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ads_id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca;->a:Lcom/google/android/gms/internal/ads/qo;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "json"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/nz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/nz;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error while preprocessing json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ca;->b:Lcom/google/android/gms/internal/ads/nz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Throwable;)V

    return-void
.end method
