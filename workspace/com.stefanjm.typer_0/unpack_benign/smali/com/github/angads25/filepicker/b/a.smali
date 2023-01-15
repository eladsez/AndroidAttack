.class public Lcom/github/angads25/filepicker/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/File;

.field public d:Ljava/io/File;

.field public e:Ljava/io/File;

.field public f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/angads25/filepicker/b/a;->a:I

    iput v0, p0, Lcom/github/angads25/filepicker/b/a;->b:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/angads25/filepicker/b/a;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/angads25/filepicker/b/a;->e:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/angads25/filepicker/b/a;->f:[Ljava/lang/String;

    return-void
.end method
