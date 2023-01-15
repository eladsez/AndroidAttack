.class Lcom/crashlytics/android/a/x;
.super La/a/a/a/a/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/a/d/b<",
        "Lcom/crashlytics/android/a/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private g:La/a/a/a/a/g/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/a/ad;La/a/a/a/a/b/k;La/a/a/a/a/d/c;)V
    .locals 6

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/d/b;-><init>(Landroid/content/Context;La/a/a/a/a/d/a;La/a/a/a/a/b/k;La/a/a/a/a/d/c;I)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/crashlytics/android/a/x;->c:La/a/a/a/a/b/k;

    invoke-interface {v0}, La/a/a/a/a/b/k;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tap"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(La/a/a/a/a/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/a/x;->g:La/a/a/a/a/g/b;

    return-void
.end method

.method protected b()I
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/a/x;->g:La/a/a/a/a/g/b;

    if-nez v0, :cond_0

    invoke-super {p0}, La/a/a/a/a/d/b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/a/x;->g:La/a/a/a/a/g/b;

    iget v0, v0, La/a/a/a/a/g/b;->e:I

    :goto_0
    return v0
.end method

.method protected c()I
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/a/x;->g:La/a/a/a/a/g/b;

    if-nez v0, :cond_0

    invoke-super {p0}, La/a/a/a/a/d/b;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/a/x;->g:La/a/a/a/a/g/b;

    iget v0, v0, La/a/a/a/a/g/b;->c:I

    :goto_0
    return v0
.end method
