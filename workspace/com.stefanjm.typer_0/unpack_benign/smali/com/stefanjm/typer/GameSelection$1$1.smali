.class Lcom/stefanjm/typer/GameSelection$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/GameSelection$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/stefanjm/typer/GameSelection$1;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/GameSelection$1;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iput-object p2, p0, Lcom/stefanjm/typer/GameSelection$1$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 p1, 0x0

    const/4 p2, -0x3

    :try_start_0
    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$1$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2328

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/app/b$a;

    iget-object v1, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object v1, v1, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-direct {v0, v1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    const-string v1, "IT\'S OVER 9000!?!?"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "I\'m sorry to break your dreams but this is too many numbers"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->a(Ljava/lang/CharSequence;)V

    const-string v1, "Sorry,I\'ll try again"

    new-instance v2, Lcom/stefanjm/typer/GameSelection$1$1$1;

    invoke-direct {v2, p0}, Lcom/stefanjm/typer/GameSelection$1$1$1;-><init>(Lcom/stefanjm/typer/GameSelection$1$1;)V

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/app/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object v1, v1, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    iget-object v1, v1, Lcom/stefanjm/typer/GameSelection;->q:Lcom/stefanjm/typer/b;

    invoke-virtual {v1}, Lcom/stefanjm/typer/b;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object v3, v3, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    const-class v4, Lcom/stefanjm/typer/PracticeGame;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "wordslist"

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "userWordsChosenAmnt"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object v0, v0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-virtual {v0, v2}, Lcom/stefanjm/typer/GameSelection;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object v0, v0, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/stefanjm/typer/GameSelection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/stefanjm/typer/GameSelection$1$1;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Landroid/support/v7/app/b$a;

    iget-object v1, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object v1, v1, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-direct {v0, v1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    const-string v1, "What did you do?"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Oops... something went very wrong."

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->a(Ljava/lang/CharSequence;)V

    const-string v1, "Sorry,I\'ll try again"

    new-instance v2, Lcom/stefanjm/typer/GameSelection$1$1$2;

    invoke-direct {v2, p0}, Lcom/stefanjm/typer/GameSelection$1$1$2;-><init>(Lcom/stefanjm/typer/GameSelection$1$1;)V

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/app/b;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    :goto_1
    iget-object p2, p0, Lcom/stefanjm/typer/GameSelection$1$1;->b:Lcom/stefanjm/typer/GameSelection$1;

    iget-object p2, p2, Lcom/stefanjm/typer/GameSelection$1;->a:Lcom/stefanjm/typer/GameSelection;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lcom/stefanjm/typer/GameSelection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$1$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
