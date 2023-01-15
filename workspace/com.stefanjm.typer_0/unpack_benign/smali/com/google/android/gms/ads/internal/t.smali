.class public final Lcom/google/android/gms/ads/internal/t;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/is;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AdState is null"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/is;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/is;->b:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/is;->p:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/bdd;->a()Lcom/google/android/gms/b/a;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_3

    const-string p0, "View in mediation adapter is null."

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Could not get View from mediation adapter."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/ads/internal/gmsg/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bdm;",
            "Lcom/google/android/gms/internal/ads/bdq;",
            "Lcom/google/android/gms/ads/internal/d;",
            ")",
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/y;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/y;-><init>(Lcom/google/android/gms/internal/ads/bdm;Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/internal/ads/bdq;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/avf;
    .locals 1

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/avg;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/avf;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "Bitmap is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "data:image/png;base64,"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Image is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/avf;->b()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string v2, "Invalid type. An image type extra should return a bitmap"

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    const-string v2, "Invalid asset type. Bitmap should be returned only for image type"

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/atw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;Z)V
    .locals 3

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "headline"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "call_to_action"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "price"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "star_rating"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->f()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "store"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/t;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v1, "images"

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extras"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/atw;->n()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "assets"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "template_id"

    const-string p3, "2"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception occurred when loading assets"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/aty;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;Z)V
    .locals 3

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "headline"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "call_to_action"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "advertiser"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logo"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->f()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/t;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/avf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v1, "images"

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extras"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aty;->n()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "assets"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "template_id"

    const-string p3, "1"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception occurred when loading assets"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/t;->b(Lcom/google/android/gms/internal/ads/qo;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bcr;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    const/4 v8, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "AdWebView is null"

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bcj;->r:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v4, "/nativeExpressAssetsLoaded"

    new-instance v5, Lcom/google/android/gms/ads/internal/w;

    invoke-direct {v5, v7}, Lcom/google/android/gms/ads/internal/w;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v4, "/nativeExpressAssetsLoadingFailed"

    new-instance v5, Lcom/google/android/gms/ads/internal/x;

    invoke-direct {v5, v7}, Lcom/google/android/gms/ads/internal/x;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bcr;->c:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdd;->h()Lcom/google/android/gms/internal/ads/bdm;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bcr;->c:Lcom/google/android/gms/internal/ads/bdd;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdd;->i()Lcom/google/android/gms/internal/ads/bdq;

    move-result-object v5

    const-string v6, "2"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/ads/atw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v14

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->f()D

    move-result-wide v16

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->g()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->h()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->l()Landroid/os/Bundle;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->p()Lcom/google/android/gms/b/a;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/view/View;

    :cond_2
    move-object/from16 v23, v9

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/bdm;->q()Lcom/google/android/gms/b/a;

    move-result-object v24

    const/16 v25, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/atw;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bcj;->q:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/ads/internal/u;

    invoke-direct {v6, v3, v4, v1}, Lcom/google/android/gms/ads/internal/u;-><init>(Lcom/google/android/gms/internal/ads/atw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;)V

    :goto_1
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/rx;)V

    goto :goto_2

    :cond_3
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/ads/aty;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->c()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->d()Lcom/google/android/gms/internal/ads/avf;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->e()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->f()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->j()Landroid/os/Bundle;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->n()Lcom/google/android/gms/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    :cond_4
    move-object/from16 v20, v9

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/bdq;->o()Lcom/google/android/gms/b/a;

    move-result-object v21

    const/16 v22, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v22}, Lcom/google/android/gms/internal/ads/aty;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/avf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atr;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqv;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bcj;->q:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/qo;->v()Lcom/google/android/gms/internal/ads/rw;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/ads/internal/v;

    invoke-direct {v6, v3, v4, v1}, Lcom/google/android/gms/ads/internal/v;-><init>(Lcom/google/android/gms/internal/ads/aty;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;)V

    goto :goto_1

    :goto_2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bcj;->o:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcr;->b:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bcj;->p:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/qo;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v2, "text/html"

    const-string v4, "UTF-8"

    invoke-interface {v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/qo;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x1

    move v8, v1

    goto :goto_5

    :cond_6
    const-string v1, "No matching template id and mapper"

    goto/16 :goto_0

    :cond_7
    :goto_4
    const-string v1, "No template ids present in mediation response"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v2, "Unable to invoke load assets"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    if-nez v8, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_8
    return v8
.end method

.method private static b(Lcom/google/android/gms/internal/ads/avf;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/avf;->a()Lcom/google/android/gms/b/a;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Drawable is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const-string p0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "Unable to get drawable. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jn;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/qo;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/qo;->getView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/is;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/is;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/is;->o:Lcom/google/android/gms/internal/ads/bcj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bcj;->o:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
