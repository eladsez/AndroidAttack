.class Lcom/stefanjm/typer/WordsPerMInuteGame$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/WordsPerMInuteGame;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/stefanjm/typer/WordsPerMInuteGame;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/WordsPerMInuteGame;JJLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iput-object p6, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->a:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const-string v0, "stop"

    const-string v1, "k\u00f5ik s\u00f5nad l\u00e4bi k\u00e4idud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    invoke-virtual {v1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/stefanjm/typer/ResultScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "typeofgame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "score"

    iget-object v2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget v2, v2, Lcom/stefanjm/typer/WordsPerMInuteGame;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mistakes"

    iget-object v2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget v2, v2, Lcom/stefanjm/typer/WordsPerMInuteGame;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gameKeyWords"

    iget-object v2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object v2, v2, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    invoke-virtual {v1, v0}, Lcom/stefanjm/typer/WordsPerMInuteGame;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->b:Lcom/stefanjm/typer/WordsPerMInuteGame;

    invoke-virtual {v0}, Lcom/stefanjm/typer/WordsPerMInuteGame;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seconds remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
