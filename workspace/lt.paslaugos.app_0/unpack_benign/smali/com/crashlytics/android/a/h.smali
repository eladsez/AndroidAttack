.class Lcom/crashlytics/android/a/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a/a/a/a/f/c;


# direct methods
.method constructor <init>(La/a/a/a/a/f/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/a/h;->a:La/a/a/a/a/f/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/crashlytics/android/a/h;
    .locals 2

    new-instance v0, La/a/a/a/a/f/d;

    const-string v1, "settings"

    invoke-direct {v0, p0, v1}, La/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/crashlytics/android/a/h;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/h;-><init>(La/a/a/a/a/f/c;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/a/h;->a:La/a/a/a/a/f/c;

    iget-object v1, p0, Lcom/crashlytics/android/a/h;->a:La/a/a/a/a/f/c;

    invoke-interface {v1}, La/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, La/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method public b()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/a/h;->a:La/a/a/a/a/f/c;

    invoke-interface {v0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
