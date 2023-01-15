.class Lcom/crashlytics/android/a/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/crashlytics/android/a/r;

.field private c:Lcom/crashlytics/android/a/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/a/r;

    invoke-direct {v0}, Lcom/crashlytics/android/a/r;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/a/p;-><init>(Landroid/content/Context;Lcom/crashlytics/android/a/r;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/a/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/a/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/a/p;->b:Lcom/crashlytics/android/a/r;

    return-void
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/a/o;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/a/p;->c:Lcom/crashlytics/android/a/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/a/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/crashlytics/android/a/j;->a(Landroid/content/Context;)Lcom/crashlytics/android/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/a/p;->c:Lcom/crashlytics/android/a/o;

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/a/p;->c:Lcom/crashlytics/android/a/o;

    return-object v0
.end method

.method public a(Lcom/crashlytics/android/a/ab;)V
    .locals 4

    invoke-virtual {p0}, Lcom/crashlytics/android/a/p;->a()Lcom/crashlytics/android/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v0, "Answers"

    const-string v1, "Firebase analytics logging was enabled, but not available..."

    invoke-interface {p1, v0, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/a/p;->b:Lcom/crashlytics/android/a/r;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/a/r;->a(Lcom/crashlytics/android/a/ab;)Lcom/crashlytics/android/a/q;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fabric event was not mappable to Firebase event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/crashlytics/android/a/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/crashlytics/android/a/q;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/a/o;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "levelEnd"

    iget-object p1, p1, Lcom/crashlytics/android/a/ab;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "post_score"

    invoke-virtual {v1}, Lcom/crashlytics/android/a/q;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/crashlytics/android/a/o;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
