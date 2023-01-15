.class final Lcom/crashlytics/android/c/z$k;
.super Lcom/crashlytics/android/c/z$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:[Lcom/crashlytics/android/c/z$j;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/c/z$j;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/c/z$j;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/c/z$j;-><init>(I[Lcom/crashlytics/android/c/z$j;)V

    iput-object p1, p0, Lcom/crashlytics/android/c/z$k;->a:[Lcom/crashlytics/android/c/z$j;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 5

    iget-object v0, p0, Lcom/crashlytics/android/c/z$k;->a:[Lcom/crashlytics/android/c/z$j;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/crashlytics/android/c/z$j;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public b(Lcom/crashlytics/android/c/e;)V
    .locals 4

    iget-object v0, p0, Lcom/crashlytics/android/c/z$k;->a:[Lcom/crashlytics/android/c/z$j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/crashlytics/android/c/z$j;->b(Lcom/crashlytics/android/c/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
