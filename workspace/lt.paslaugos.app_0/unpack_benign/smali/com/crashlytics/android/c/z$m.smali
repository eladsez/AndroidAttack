.class final Lcom/crashlytics/android/c/z$m;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/a/a/f;Lcom/crashlytics/android/c/z$k;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iget-object p2, p1, Lcom/crashlytics/android/c/a/a/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/c/z$m;->a:Ljava/lang/String;

    iget p1, p1, Lcom/crashlytics/android/c/a/a/f;->b:I

    iput p1, p0, Lcom/crashlytics/android/c/z$m;->b:I

    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/z$m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/z$m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 3

    invoke-direct {p0}, Lcom/crashlytics/android/c/z$m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/c/z$m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/crashlytics/android/c/z$m;->b:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/e;->d(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 2

    invoke-direct {p0}, Lcom/crashlytics/android/c/z$m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/c/z$m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/c/z$m;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/e;->a(II)V

    return-void
.end method
