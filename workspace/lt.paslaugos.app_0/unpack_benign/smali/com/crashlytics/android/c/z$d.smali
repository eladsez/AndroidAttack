.class final Lcom/crashlytics/android/c/z$d;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:F

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(FIZIJJ)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/c/z$j;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iput p1, p0, Lcom/crashlytics/android/c/z$d;->a:F

    iput p2, p0, Lcom/crashlytics/android/c/z$d;->b:I

    iput-boolean p3, p0, Lcom/crashlytics/android/c/z$d;->c:Z

    iput p4, p0, Lcom/crashlytics/android/c/z$d;->d:I

    iput-wide p5, p0, Lcom/crashlytics/android/c/z$d;->e:J

    iput-wide p7, p0, Lcom/crashlytics/android/c/z$d;->f:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    iget v0, p0, Lcom/crashlytics/android/c/z$d;->a:F

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/c/e;->b(IF)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/crashlytics/android/c/z$d;->b:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/c/e;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/crashlytics/android/c/z$d;->c:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/crashlytics/android/c/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/crashlytics/android/c/z$d;->d:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/crashlytics/android/c/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/crashlytics/android/c/z$d;->e:J

    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/c/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/crashlytics/android/c/z$d;->f:J

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/c/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 3

    iget v0, p0, Lcom/crashlytics/android/c/z$d;->a:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(IF)V

    iget v0, p0, Lcom/crashlytics/android/c/z$d;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->c(II)V

    iget-boolean v0, p0, Lcom/crashlytics/android/c/z$d;->c:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(IZ)V

    iget v0, p0, Lcom/crashlytics/android/c/z$d;->d:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(II)V

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$d;->e:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/c/e;->a(IJ)V

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$d;->f:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/c/e;->a(IJ)V

    return-void
.end method
