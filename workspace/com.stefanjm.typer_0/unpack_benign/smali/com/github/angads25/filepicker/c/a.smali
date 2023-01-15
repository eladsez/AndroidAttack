.class public Lcom/github/angads25/filepicker/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Lcom/github/angads25/filepicker/b/a;


# direct methods
.method public constructor <init>(Lcom/github/angads25/filepicker/b/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/github/angads25/filepicker/b/a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/github/angads25/filepicker/b/a;->f:[Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/github/angads25/filepicker/c/a;->a:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lcom/github/angads25/filepicker/c/a;->b:Lcom/github/angads25/filepicker/b/a;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/github/angads25/filepicker/c/a;->b:Lcom/github/angads25/filepicker/b/a;

    iget v0, v0, Lcom/github/angads25/filepicker/b/a;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/github/angads25/filepicker/c/a;->a:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method
