.class final synthetic Lcom/google/android/gms/internal/ads/auq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aup;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/android/gms/internal/ads/bq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aup;Ljava/util/Map;Lcom/google/android/gms/internal/ads/bq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/auq;->a:Lcom/google/android/gms/internal/ads/aup;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/auq;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/auq;->c:Lcom/google/android/gms/internal/ads/bq;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/auq;->a:Lcom/google/android/gms/internal/ads/aup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/auq;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/auq;->c:Lcom/google/android/gms/internal/ads/bq;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aup;->a:Lcom/google/android/gms/internal/ads/auo;

    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/auo;->a(Lcom/google/android/gms/internal/ads/auo;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "messageType"

    const-string v3, "htmlLoaded"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aup;->a:Lcom/google/android/gms/internal/ads/auo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/auo;->b(Lcom/google/android/gms/internal/ads/auo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sendMessageToNativeJs"

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
