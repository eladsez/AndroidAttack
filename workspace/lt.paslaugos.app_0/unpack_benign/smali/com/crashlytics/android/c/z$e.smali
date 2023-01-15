.class final Lcom/crashlytics/android/c/z$e;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(JLjava/lang/String;[Lcom/crashlytics/android/c/z$j;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p4}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iput-wide p1, p0, Lcom/crashlytics/android/c/z$e;->a:J

    iput-object p3, p0, Lcom/crashlytics/android/c/z$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$e;->a:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/c/e;->b(IJ)I

    move-result v0

    iget-object v1, p0, Lcom/crashlytics/android/c/z$e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/c/e;->b(ILcom/crashlytics/android/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 3

    iget-wide v0, p0, Lcom/crashlytics/android/c/z$e;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/c/e;->a(IJ)V

    iget-object v0, p0, Lcom/crashlytics/android/c/z$e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/c/e;->a(ILcom/crashlytics/android/c/b;)V

    return-void
.end method
