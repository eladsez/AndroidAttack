.class Lcom/crashlytics/android/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/a/a/d/a<",
        "Lcom/crashlytics/android/a/ab;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/a/ab;)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/a/ad;->b(Lcom/crashlytics/android/a/ab;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lcom/crashlytics/android/a/ab;

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/a/ad;->a(Lcom/crashlytics/android/a/ab;)[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/crashlytics/android/a/ab;)Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/crashlytics/android/a/ab;->a:Lcom/crashlytics/android/a/ac;

    const-string v2, "appBundleId"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "executionId"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "installationId"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/crashlytics/android/a/ac;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "androidId"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v2, "advertisingId"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->e:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const-string v2, "limitAdTrackingEnabled"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "betaDeviceToken"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "buildId"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osVersion"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceModel"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVersionCode"

    iget-object v3, v1, Lcom/crashlytics/android/a/ac;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVersionName"

    iget-object v1, v1, Lcom/crashlytics/android/a/ac;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/crashlytics/android/a/ab;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p1, Lcom/crashlytics/android/a/ab;->c:Lcom/crashlytics/android/a/ab$b;

    invoke-virtual {v2}, Lcom/crashlytics/android/a/ab$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/crashlytics/android/a/ab;->d:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, "details"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/crashlytics/android/a/ab;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "customType"

    iget-object v2, p1, Lcom/crashlytics/android/a/ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/crashlytics/android/a/ab;->f:Ljava/util/Map;

    if-eqz v1, :cond_2

    const-string v1, "customAttributes"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/crashlytics/android/a/ab;->f:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "predefinedType"

    iget-object v2, p1, Lcom/crashlytics/android/a/ab;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/crashlytics/android/a/ab;->h:Ljava/util/Map;

    if-eqz v1, :cond_3

    const-string v1, "predefinedAttributes"

    new-instance v2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/crashlytics/android/a/ab;->h:Ljava/util/Map;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
