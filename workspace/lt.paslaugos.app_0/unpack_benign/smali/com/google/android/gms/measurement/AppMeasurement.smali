.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;,
        Lcom/google/android/gms/measurement/AppMeasurement$f;,
        Lcom/google/android/gms/measurement/AppMeasurement$c;,
        Lcom/google/android/gms/measurement/AppMeasurement$b;,
        Lcom/google/android/gms/measurement/AppMeasurement$e;,
        Lcom/google/android/gms/measurement/AppMeasurement$d;,
        Lcom/google/android/gms/measurement/AppMeasurement$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CRASH_ORIGIN:Ljava/lang/String; = "crash"

.field public static final FCM_ORIGIN:Ljava/lang/String; = "fcm"


# instance fields
.field private final zzjev:Lcom/google/android/gms/internal/vc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/vc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/vc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vc;->m()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->A()Lcom/google/android/gms/internal/sr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/sr;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/we;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->A()Lcom/google/android/gms/internal/sr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/sr;->b(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yk;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/we;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->v()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wv;->z()Lcom/google/android/gms/internal/wt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/wt;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->v()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wv;->z()Lcom/google/android/gms/internal/wt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/wt;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/s;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vc;->f()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    const/16 p1, 0x19

    return p1
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getUserProperties(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->b(Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/support/v4/g/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/g/a;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yh;

    iget-object v2, v1, Lcom/google/android/gms/internal/yh;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yh;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    const-string v1, "app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v3, p3

    iget-object p3, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/measurement/AppMeasurement$c;)V

    return-void
.end method

.method public registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$f;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->v()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wv;->a(Lcom/google/android/gms/measurement/AppMeasurement$f;)V

    return-void
.end method

.method protected setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method protected setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->b(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/measurement/AppMeasurement$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/measurement/AppMeasurement$b;)V

    return-void
.end method

.method public setMeasurementEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->a(Z)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/we;->a(J)V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/we;->b(J)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/yk;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    const/16 p2, 0x18

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/yk;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vc;->o()Lcom/google/android/gms/internal/yk;

    move-result-object v1

    const-string v2, "_ev"

    invoke-virtual {v1, v0, v2, p2, p1}, Lcom/google/android/gms/internal/yk;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v0, "app"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/we;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->l()Lcom/google/android/gms/internal/we;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/we;->b(Lcom/google/android/gms/measurement/AppMeasurement$c;)V

    return-void
.end method

.method public unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$f;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzjev:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->v()Lcom/google/android/gms/internal/wv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wv;->b(Lcom/google/android/gms/measurement/AppMeasurement$f;)V

    return-void
.end method
