.class public final Lcom/google/android/gms/internal/ads/bev;
.super Lcom/google/android/gms/internal/ads/beq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/beq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "Server parameters: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->e(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/bez;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tb;->b()Lcom/google/android/gms/internal/ads/tf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bez;->a(Lcom/google/android/gms/internal/ads/tf;)Lcom/google/android/gms/internal/ads/bez;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/b/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/bes;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bey;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/ads/bey;-><init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/bes;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    new-instance v1, Lcom/google/android/gms/internal/ads/td;

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x533a80d4

    if-eq v3, v4, :cond_3

    const v4, -0x3ebdafe9

    if-eq v3, v4, :cond_2

    const v4, -0xe47b3f2

    if-eq v3, v4, :cond_1

    const v4, 0x240b672c

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "interstitial"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "rewarded"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "native"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const-string v3, "banner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    :pswitch_0
    sget p2, Lcom/google/android/gms/internal/ads/tc;->d:I

    goto :goto_1

    :pswitch_1
    sget p2, Lcom/google/android/gms/internal/ads/tc;->c:I

    goto :goto_1

    :pswitch_2
    sget p2, Lcom/google/android/gms/internal/ads/tc;->b:I

    goto :goto_1

    :pswitch_3
    sget p2, Lcom/google/android/gms/internal/ads/tc;->a:I

    :goto_1
    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/td;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/internal/ads/tb;->a(Lcom/google/android/gms/internal/ads/td;Lcom/google/android/gms/internal/ads/te;)V

    return-void

    :goto_2
    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a([BLjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/bel;Lcom/google/android/gms/internal/ads/bdg;Lcom/google/android/gms/internal/ads/aou;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bew;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/bew;-><init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/bel;Lcom/google/android/gms/internal/ads/bdg;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    new-instance p6, Lcom/google/android/gms/internal/ads/ta;

    invoke-static {p4}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bev;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ta;-><init>(Landroid/content/Context;[BLandroid/os/Bundle;Landroid/os/Bundle;)V

    iget p1, p7, Lcom/google/android/gms/internal/ads/aou;->e:I

    iget p2, p7, Lcom/google/android/gms/internal/ads/aou;->b:I

    iget-object p3, p7, Lcom/google/android/gms/internal/ads/aou;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/ads/m;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support banner."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/sy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Adapter failed to render banner ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final a([BLjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/ben;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bex;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/bex;-><init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/ben;Lcom/google/android/gms/internal/ads/bdg;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    new-instance p6, Lcom/google/android/gms/internal/ads/ta;

    invoke-static {p4}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bev;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ta;-><init>(Landroid/content/Context;[BLandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support interstitial."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/sy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Adapter failed to render interstitial ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/bez;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tb;->a()Lcom/google/android/gms/internal/ads/tf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bez;->a(Lcom/google/android/gms/internal/ads/tf;)Lcom/google/android/gms/internal/ads/bez;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/aqv;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Lcom/google/android/gms/internal/ads/tb;

    check-cast v0, Lcom/google/android/gms/ads/mediation/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/m;->getVideoController()Lcom/google/android/gms/internal/ads/aqv;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sz;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
