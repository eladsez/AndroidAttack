.class Lcom/stefanjm/typer/GameSelection$2;
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

    iput-object p1, p0, Lcom/stefanjm/typer/GameSelection$2;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/stefanjm/typer/GameSelection$2;->a:Lcom/stefanjm/typer/GameSelection;

    iget-object p1, p1, Lcom/stefanjm/typer/GameSelection;->q:Lcom/stefanjm/typer/b;

    iget-object v0, p0, Lcom/stefanjm/typer/GameSelection$2;->a:Lcom/stefanjm/typer/GameSelection;

    iget-object v0, v0, Lcom/stefanjm/typer/GameSelection;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/stefanjm/typer/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stefanjm/typer/GameSelection$2;->a:Lcom/stefanjm/typer/GameSelection;

    iget-object p1, p1, Lcom/stefanjm/typer/GameSelection;->q:Lcom/stefanjm/typer/b;

    invoke-virtual {p1}, Lcom/stefanjm/typer/b;->a()Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/stefanjm/typer/GameSelection$2;->a:Lcom/stefanjm/typer/GameSelection;

    const-class v2, Lcom/stefanjm/typer/WordsPerMInuteGame;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "wordslist"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/stefanjm/typer/GameSelection$2;->a:Lcom/stefanjm/typer/GameSelection;

    invoke-virtual {p1, v0}, Lcom/stefanjm/typer/GameSelection;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
