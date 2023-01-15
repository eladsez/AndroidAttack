.class Lcom/stefanjm/typer/GameSelection$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/GameSelection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/stefanjm/typer/GameSelection;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/GameSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    iget-object p1, p1, Lcom/stefanjm/typer/GameSelection;->q:Lcom/stefanjm/typer/b;

    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    iget-object v0, v0, Lcom/stefanjm/typer/GameSelection;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/stefanjm/typer/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/support/v7/app/b$a;

    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-direct {p1, v0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const-string v0, "Word Count"

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    const-string v0, "Enter the amount of words"

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/b$a;->b(Landroid/view/View;)Landroid/support/v7/app/b$a;

    const-string v2, "Ok"

    new-instance v3, Lcom/stefanjm/typer/GameSelection$1$1;

    invoke-direct {v3, p0, v0}, Lcom/stefanjm/typer/GameSelection$1$1;-><init>(Lcom/stefanjm/typer/GameSelection$1;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    const-string v0, "Cancel"

    new-instance v2, Lcom/stefanjm/typer/GameSelection$1$2;

    invoke-direct {v2, p0}, Lcom/stefanjm/typer/GameSelection$1$2;-><init>(Lcom/stefanjm/typer/GameSelection$1;)V

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    invoke-virtual {p1}, Landroid/support/v7/app/b$a;->c()Landroid/support/v7/app/b;

    iget-object p1, p0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/stefanjm/typer/GameSelection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method
