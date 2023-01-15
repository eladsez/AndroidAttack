.class public Lcom/crashlytics/android/CrashlyticsInitProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/CrashlyticsInitProvider$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;La/a/a/a/a/b/o;Lcom/crashlytics/android/CrashlyticsInitProvider$a;)Z
    .locals 0

    invoke-virtual {p2, p1}, La/a/a/a/a/b/o;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p3, p1}, Lcom/crashlytics/android/CrashlyticsInitProvider$a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 5

    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsInitProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, La/a/a/a/a/b/o;

    invoke-direct {v1}, La/a/a/a/a/b/o;-><init>()V

    new-instance v2, Lcom/crashlytics/android/b;

    invoke-direct {v2}, Lcom/crashlytics/android/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/crashlytics/android/CrashlyticsInitProvider;->a(Landroid/content/Context;La/a/a/a/a/b/o;Lcom/crashlytics/android/CrashlyticsInitProvider$a;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v3, v2, [La/a/a/a/i;

    new-instance v4, Lcom/crashlytics/android/a;

    invoke-direct {v4}, Lcom/crashlytics/android/a;-><init>()V

    aput-object v4, v3, v1

    invoke-static {v0, v3}, La/a/a/a/c;->a(Landroid/content/Context;[La/a/a/a/i;)La/a/a/a/c;

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v3, "CrashlyticsInitProvider"

    const-string v4, "CrashlyticsInitProvider initialization successful"

    invoke-interface {v0, v3, v4}, La/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v2, "CrashlyticsInitProvider"

    const-string v3, "CrashlyticsInitProvider initialization unsuccessful"

    invoke-interface {v0, v2, v3}, La/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :goto_0
    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
