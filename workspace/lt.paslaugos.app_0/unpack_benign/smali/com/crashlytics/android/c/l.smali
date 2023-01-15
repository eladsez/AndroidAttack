.class Lcom/crashlytics/android/c/l;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/e/g;


# instance fields
.field private final a:Lcom/crashlytics/android/c/aa;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/aa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/l;->a:Lcom/crashlytics/android/c/aa;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/l;->a:Lcom/crashlytics/android/c/aa;

    invoke-interface {v0}, Lcom/crashlytics/android/c/aa;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/l;->a:Lcom/crashlytics/android/c/aa;

    invoke-interface {v0}, Lcom/crashlytics/android/c/aa;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/l;->a:Lcom/crashlytics/android/c/aa;

    invoke-interface {v0}, Lcom/crashlytics/android/c/aa;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
