.class final Lcom/crashlytics/android/c/z$l;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/a/a/e;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iget-object v0, p1, Lcom/crashlytics/android/c/a/a/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/z$l;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/crashlytics/android/c/a/a/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/z$l;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/crashlytics/android/c/a/a/e;->c:J

    iput-wide v0, p0, Lcom/crashlytics/android/c/z$l;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/z$l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v0

    iget-object v1, p0, Lcom/crashlytics/android/c/z$l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/crashlytics/android/c/z$l;->c:J

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/c/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/z$l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/z$l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$l;->c:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/c/e;->a(IJ)V

    return-void
.end method
