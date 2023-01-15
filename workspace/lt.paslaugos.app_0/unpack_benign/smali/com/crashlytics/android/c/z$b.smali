.class final Lcom/crashlytics/android/c/z$b;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/a/a/a;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iget-wide v0, p1, Lcom/crashlytics/android/c/a/a/a;->a:J

    iput-wide v0, p0, Lcom/crashlytics/android/c/z$b;->a:J

    iget-wide v0, p1, Lcom/crashlytics/android/c/a/a/a;->b:J

    iput-wide v0, p0, Lcom/crashlytics/android/c/z$b;->b:J

    iget-object v0, p1, Lcom/crashlytics/android/c/a/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/z$b;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/crashlytics/android/c/a/a/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/crashlytics/android/c/z$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$b;->a:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/c/e;->b(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/crashlytics/android/c/z$b;->b:J

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/c/e;->b(IJ)I

    move-result v1

    iget-object v2, p0, Lcom/crashlytics/android/c/z$b;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v2

    iget-object v3, p0, Lcom/crashlytics/android/c/z$b;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v3

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    return v2
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 3

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$b;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/c/e;->a(IJ)V

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$b;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/c/e;->a(IJ)V

    iget-object v0, p0, Lcom/crashlytics/android/c/z$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/z$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    return-void
.end method
