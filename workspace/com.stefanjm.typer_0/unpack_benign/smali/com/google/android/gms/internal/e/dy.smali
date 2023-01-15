.class final Lcom/google/android/gms/internal/e/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/df;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/e/df;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/e/df;Lcom/google/android/gms/internal/e/dg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/e/dy;-><init>(Lcom/google/android/gms/internal/e/df;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/dc;->p()Lcom/google/android/gms/internal/e/fo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/e/dc;->p()Lcom/google/android/gms/internal/e/fo;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/fo;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gs"

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    const-string v4, "_cmp"

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/internal/e/df;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->D()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Activity created with referrer"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    const-string v2, "auto"

    const-string v3, "_ldl"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/e/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    if-eqz p2, :cond_7

    const-string v1, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/ea;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/e/ed;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/e/ed;->c:J

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/e/ed;->a:Ljava/lang/String;

    const-string v0, "referrer_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/e/ed;->b:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/ea;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/ea;->c(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->r()Lcom/google/android/gms/internal/e/fd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->s()Lcom/google/android/gms/internal/e/bz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/e/fh;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/internal/e/fh;-><init>(Lcom/google/android/gms/internal/e/fd;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/e/ea;->b(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->r()Lcom/google/android/gms/internal/e/fd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/e/dc;->s()Lcom/google/android/gms/internal/e/bz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/e/fg;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/internal/e/fg;-><init>(Lcom/google/android/gms/internal/e/fd;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/e/bz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dy;->a:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->j()Lcom/google/android/gms/internal/e/ea;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/e/ea;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
