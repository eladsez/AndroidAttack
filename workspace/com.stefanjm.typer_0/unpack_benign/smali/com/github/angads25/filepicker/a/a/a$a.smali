.class Lcom/github/angads25/filepicker/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/angads25/filepicker/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

.field final synthetic e:Lcom/github/angads25/filepicker/a/a/a;


# direct methods
.method constructor <init>(Lcom/github/angads25/filepicker/a/a/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/a/a/a$a;->e:Lcom/github/angads25/filepicker/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/github/angads25/filepicker/a$c;->fname:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/a/a/a$a;->b:Landroid/widget/TextView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->ftype:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/a/a/a$a;->c:Landroid/widget/TextView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->image_type:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/github/angads25/filepicker/a/a/a$a;->a:Landroid/widget/ImageView;

    sget p1, Lcom/github/angads25/filepicker/a$c;->file_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    iput-object p1, p0, Lcom/github/angads25/filepicker/a/a/a$a;->d:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    return-void
.end method
