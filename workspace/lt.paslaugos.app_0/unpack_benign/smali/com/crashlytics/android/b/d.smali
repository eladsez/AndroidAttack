.class Lcom/crashlytics/android/b/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/b/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/b/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/b/d;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/crashlytics/android/b/d;
    .locals 1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/crashlytics/android/b/d;->a(Ljava/util/Properties;)Lcom/crashlytics/android/b/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Properties;)Lcom/crashlytics/android/b/d;
    .locals 4

    const-string v0, "version_code"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version_name"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_id"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcom/crashlytics/android/b/d;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/crashlytics/android/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
