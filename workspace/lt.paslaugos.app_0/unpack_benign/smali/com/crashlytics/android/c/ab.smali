.class Lcom/crashlytics/android/c/ab;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private final a:La/a/a/a/a/f/c;


# direct methods
.method public constructor <init>(La/a/a/a/a/f/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/ab;->a:La/a/a/a/a/f/c;

    return-void
.end method

.method public static a(La/a/a/a/a/f/c;Lcom/crashlytics/android/c/i;)Lcom/crashlytics/android/c/ab;
    .locals 4

    invoke-interface {p0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_migration_complete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, La/a/a/a/a/f/d;

    invoke-direct {v0, p1}, La/a/a/a/a/f/d;-><init>(La/a/a/a/i;)V

    invoke-interface {p0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "always_send_reports_opt_in"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "always_send_reports_opt_in"

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {v0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "always_send_reports_opt_in"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-interface {p0}, La/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p0, p1}, La/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_1
    invoke-interface {p0}, La/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "preferences_migration_complete"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p0, p1}, La/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_2
    new-instance p1, Lcom/crashlytics/android/c/ab;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/c/ab;-><init>(La/a/a/a/a/f/c;)V

    return-object p1
.end method


# virtual methods
.method a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/ab;->a:La/a/a/a/a/f/c;

    iget-object v1, p0, Lcom/crashlytics/android/c/ab;->a:La/a/a/a/a/f/c;

    invoke-interface {v1}, La/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v0, p1}, La/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method a()Z
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/ab;->a:La/a/a/a/a/f/c;

    invoke-interface {v0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
