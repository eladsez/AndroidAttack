.class public final Lcom/google/android/gms/internal/ads/ats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/bq;

.field private e:Lcom/google/android/gms/internal/ads/awz;

.field private f:Lcom/google/android/gms/ads/internal/gmsg/ae;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->d:Lcom/google/android/gms/internal/ads/bq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ats;)Lcom/google/android/gms/internal/ads/awz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ats;->e:Lcom/google/android/gms/internal/ads/awz;

    return-object p0
.end method

.method private final c()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->b:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ats;->c:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ats;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->c:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/awz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->e:Lcom/google/android/gms/internal/ads/awz;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/awz;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->e:Lcom/google/android/gms/internal/ads/awz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->d:Lcom/google/android/gms/internal/ads/bq;

    const-string v0, "/unconfirmedClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ats;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bq;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/att;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/att;-><init>(Lcom/google/android/gms/internal/ads/ats;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->d:Lcom/google/android/gms/internal/ads/bq;

    const-string v0, "/unconfirmedClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ats;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->e:Lcom/google/android/gms/internal/ads/awz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ats;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->e:Lcom/google/android/gms/internal/ads/awz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/awz;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ats;->b:Ljava/lang/Long;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ats;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time_interval"

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ats;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-virtual {p1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ats;->d:Lcom/google/android/gms/internal/ads/bq;

    const-string v1, "sendMessageToNativeJs"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ats;->c()V

    :cond_3
    return-void
.end method
