.class abstract Lcom/crashlytics/android/c/z$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "j"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/crashlytics/android/c/z$j;


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/c/z$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/c/z$j;->a:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/crashlytics/android/c/z;->a()[Lcom/crashlytics/android/c/z$j;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/c/z$j;->b:[Lcom/crashlytics/android/c/z$j;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 2

    invoke-virtual {p0}, Lcom/crashlytics/android/c/z$j;->c()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/c/e;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/crashlytics/android/c/z$j;->a:I

    invoke-static {v1}, Lcom/crashlytics/android/c/e;->j(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/crashlytics/android/c/e;)V
    .locals 4

    iget v0, p0, Lcom/crashlytics/android/c/z$j;->a:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/e;->g(II)V

    invoke-virtual {p0}, Lcom/crashlytics/android/c/z$j;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/c/e;->k(I)V

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/c/z$j;->a(Lcom/crashlytics/android/c/e;)V

    iget-object v0, p0, Lcom/crashlytics/android/c/z$j;->b:[Lcom/crashlytics/android/c/z$j;

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

.method public c()I
    .locals 5

    invoke-virtual {p0}, Lcom/crashlytics/android/c/z$j;->a()I

    move-result v0

    iget-object v1, p0, Lcom/crashlytics/android/c/z$j;->b:[Lcom/crashlytics/android/c/z$j;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/crashlytics/android/c/z$j;->b()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
