.class public Lcom/github/angads25/filepicker/d/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/github/angads25/filepicker/b/a;

.field private g:Lcom/github/angads25/filepicker/a/a;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/angads25/filepicker/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/github/angads25/filepicker/c/a;

.field private j:Lcom/github/angads25/filepicker/a/a/a;

.field private k:Landroid/widget/Button;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/angads25/filepicker/b/a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    new-instance p1, Lcom/github/angads25/filepicker/c/a;

    invoke-direct {p1, p2}, Lcom/github/angads25/filepicker/c/a;-><init>(Lcom/github/angads25/filepicker/b/a;)V

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->i:Lcom/github/angads25/filepicker/c/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/github/angads25/filepicker/d/a;)Lcom/github/angads25/filepicker/a/a;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/d/a;->g:Lcom/github/angads25/filepicker/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/github/angads25/filepicker/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->l:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/github/angads25/filepicker/d/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v0, v0, Lcom/github/angads25/filepicker/b/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v1, v1, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/github/angads25/filepicker/d/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/github/angads25/filepicker/d/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic e(Lcom/github/angads25/filepicker/d/a;)Lcom/github/angads25/filepicker/b/a;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    return-object p0
.end method

.method static synthetic f(Lcom/github/angads25/filepicker/d/a;)Lcom/github/angads25/filepicker/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/github/angads25/filepicker/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->g:Lcom/github/angads25/filepicker/a/a;

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-static {}, Lcom/github/angads25/filepicker/b/c;->a()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/angads25/filepicker/b/b;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/github/angads25/filepicker/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v1, v1, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v1, v1, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/github/angads25/filepicker/b/b;

    invoke-direct {v0}, Lcom/github/angads25/filepicker/b/b;-><init>()V

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    sget v3, Lcom/github/angads25/filepicker/a$f;->label_parent_dir:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/angads25/filepicker/b/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/angads25/filepicker/b/b;->a(Z)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/angads25/filepicker/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/github/angads25/filepicker/b/b;->a(J)V

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->i:Lcom/github/angads25/filepicker/c/a;

    invoke-static {v0, v2, v1}, Lcom/github/angads25/filepicker/c/b;->a(Ljava/util/ArrayList;Ljava/io/File;Lcom/github/angads25/filepicker/c/a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    invoke-virtual {v0}, Lcom/github/angads25/filepicker/a/a/a;->notifyDataSetChanged()V

    :goto_0
    invoke-direct {p0}, Lcom/github/angads25/filepicker/d/a;->a()V

    return-void

    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->requestWindowFeature(I)Z

    sget p1, Lcom/github/angads25/filepicker/a$d;->dialog_main:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->setContentView(I)V

    sget p1, Lcom/github/angads25/filepicker/a$c;->fileList:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->b:Landroid/widget/ListView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->select:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    invoke-static {}, Lcom/github/angads25/filepicker/b/c;->c()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/github/angads25/filepicker/a$b;->colorAccent:I

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/github/angads25/filepicker/a$b;->colorAccent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    const/16 v1, 0x80

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    sget p1, Lcom/github/angads25/filepicker/a$c;->dname:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->title:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->e:Landroid/widget/TextView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->dir_path:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->d:Landroid/widget/TextView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->cancel:I

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/d/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    new-instance v1, Lcom/github/angads25/filepicker/d/a$1;

    invoke-direct {v1, p0}, Lcom/github/angads25/filepicker/d/a$1;-><init>(Lcom/github/angads25/filepicker/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/github/angads25/filepicker/d/a$2;

    invoke-direct {v0, p0}, Lcom/github/angads25/filepicker/d/a$2;-><init>(Lcom/github/angads25/filepicker/d/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/github/angads25/filepicker/a/a/a;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    invoke-direct {p1, v0, v1, v2}, Lcom/github/angads25/filepicker/a/a/a;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/github/angads25/filepicker/b/a;)V

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    new-instance v0, Lcom/github/angads25/filepicker/d/a$3;

    invoke-direct {v0, p0}, Lcom/github/angads25/filepicker/d/a$3;-><init>(Lcom/github/angads25/filepicker/d/a;)V

    invoke-virtual {p1, v0}, Lcom/github/angads25/filepicker/a/a/a;->a(Lcom/github/angads25/filepicker/a/b;)V

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/github/angads25/filepicker/d/a;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_3

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/angads25/filepicker/b/b;

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/b/b;->c()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/b/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/github/angads25/filepicker/d/a;->a()V

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object p3, p3, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/github/angads25/filepicker/b/b;

    invoke-direct {p1}, Lcom/github/angads25/filepicker/b/b;-><init>()V

    iget-object p3, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    sget p4, Lcom/github/angads25/filepicker/a$f;->label_parent_dir:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/github/angads25/filepicker/b/b;->a(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/github/angads25/filepicker/b/b;->a(Z)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/github/angads25/filepicker/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/github/angads25/filepicker/b/b;->a(J)V

    iget-object p3, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/github/angads25/filepicker/d/a;->i:Lcom/github/angads25/filepicker/c/a;

    invoke-static {p1, p2, p3}, Lcom/github/angads25/filepicker/c/b;->a(Ljava/util/ArrayList;Ljava/io/File;Lcom/github/angads25/filepicker/c/a;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/a/a/a;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    sget p2, Lcom/github/angads25/filepicker/a$f;->error_dir_access:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    sget p1, Lcom/github/angads25/filepicker/a$c;->file_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->performClick()Z

    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/angads25/filepicker/a$f;->choose_button_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/angads25/filepicker/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v0, v0, Lcom/github/angads25/filepicker/b/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/github/angads25/filepicker/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v1, v1, Lcom/github/angads25/filepicker/b/a;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/github/angads25/filepicker/b/b;

    invoke-direct {v1}, Lcom/github/angads25/filepicker/b/b;-><init>()V

    iget-object v2, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    sget v3, Lcom/github/angads25/filepicker/a$f;->label_parent_dir:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/angads25/filepicker/b/b;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/angads25/filepicker/b/b;->a(Z)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/angads25/filepicker/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/angads25/filepicker/b/b;->a(J)V

    iget-object v2, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v0, v0, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v0, v0, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v1, v1, Lcom/github/angads25/filepicker/b/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->f:Lcom/github/angads25/filepicker/b/a;

    iget-object v1, v1, Lcom/github/angads25/filepicker/b/a;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/github/angads25/filepicker/d/a;->a()V

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/github/angads25/filepicker/d/a;->i:Lcom/github/angads25/filepicker/c/a;

    invoke-static {v1, v0, v2}, Lcom/github/angads25/filepicker/c/b;->a(Ljava/util/ArrayList;Ljava/io/File;Lcom/github/angads25/filepicker/c/a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->j:Lcom/github/angads25/filepicker/a/a/a;

    invoke-virtual {v0}, Lcom/github/angads25/filepicker/a/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/github/angads25/filepicker/d/a;->a()V

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/angads25/filepicker/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/angads25/filepicker/a$f;->choose_button_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/github/angads25/filepicker/b/c;->c()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/angads25/filepicker/d/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/angads25/filepicker/d/a;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
