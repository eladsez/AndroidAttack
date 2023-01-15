.class Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;


# direct methods
.method constructor <init>(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;)V
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;->a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;->a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;->a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    invoke-static {v0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->setChecked(Z)V

    iget-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;->a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    invoke-static {p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;)Lcom/github/angads25/filepicker/widget/a;

    move-result-object p1

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;->a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    iget-object v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;->a:Lcom/github/angads25/filepicker/widget/MaterialCheckbox;

    invoke-virtual {v1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/github/angads25/filepicker/widget/a;->a(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;Z)V

    return-void
.end method
