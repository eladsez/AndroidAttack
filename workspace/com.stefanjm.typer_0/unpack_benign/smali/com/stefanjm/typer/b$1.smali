.class Lcom/stefanjm/typer/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/b;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {p1}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Landroid/support/v4/a/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "permissionREQ"

    const-string v1, "request permission"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {p1}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p2, v0

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    new-array p1, p2, [Ljava/lang/String;

    const-string p2, "txt"

    aput-object p2, p1, v0

    new-instance p2, Lcom/github/angads25/filepicker/b/a;

    invoke-direct {p2}, Lcom/github/angads25/filepicker/b/a;-><init>()V

    iput v0, p2, Lcom/github/angads25/filepicker/b/a;->a:I

    iput v0, p2, Lcom/github/angads25/filepicker/b/a;->b:I

    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/github/angads25/filepicker/b/a;->d:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/github/angads25/filepicker/b/a;->e:Ljava/io/File;

    iput-object p1, p2, Lcom/github/angads25/filepicker/b/a;->f:[Ljava/lang/String;

    new-instance p1, Lcom/github/angads25/filepicker/d/a;

    iget-object v1, p0, Lcom/stefanjm/typer/b$1;->a:Lcom/stefanjm/typer/b;

    invoke-static {v1}, Lcom/stefanjm/typer/b;->a(Lcom/stefanjm/typer/b;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lcom/github/angads25/filepicker/d/a;-><init>(Landroid/content/Context;Lcom/github/angads25/filepicker/b/a;)V

    const-string p2, "Select a File"

    invoke-virtual {p1, p2}, Lcom/github/angads25/filepicker/d/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/stefanjm/typer/b$1$1;

    invoke-direct {p2, p0}, Lcom/stefanjm/typer/b$1$1;-><init>(Lcom/stefanjm/typer/b$1;)V

    invoke-virtual {p1, p2}, Lcom/github/angads25/filepicker/d/a;->a(Lcom/github/angads25/filepicker/a/a;)V

    invoke-virtual {p1, v0}, Lcom/github/angads25/filepicker/d/a;->setCancelable(Z)V

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/d/a;->show()V

    return-void
.end method
