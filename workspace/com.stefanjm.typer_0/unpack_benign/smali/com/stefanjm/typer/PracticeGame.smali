.class public Lcom/stefanjm/typer/PracticeGame;
.super Landroid/support/v7/app/c;


# instance fields
.field private A:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/EditText;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/Chronometer;

.field u:I

.field v:I

.field w:I

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field y:I

.field z:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stefanjm/typer/PracticeGame;->u:I

    iput v0, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    iget v0, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    iget v1, p0, Lcom/stefanjm/typer/PracticeGame;->y:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->t:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    const-string v0, "stop"

    const-string v1, "k\u00f5ik s\u00f5nad l\u00e4bi k\u00e4idud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/stefanjm/typer/PracticeGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/stefanjm/typer/ResultScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "typeofgame"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "score"

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mistakes"

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "time"

    iget-object v2, p0, Lcom/stefanjm/typer/PracticeGame;->t:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "gameKeyWords"

    iget-object v2, p0, Lcom/stefanjm/typer/PracticeGame;->x:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/PracticeGame;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/PracticeGame;->finish()V

    return-void

    :cond_0
    iget v0, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/PracticeGame;->x:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->o:Landroid/widget/TextView;

    const-string v1, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/PracticeGame;->x:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    iget v1, p0, Lcom/stefanjm/typer/PracticeGame;->y:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    const-string v0, "CHECKTHIS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextword is still: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/PracticeGame;->x:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/PracticeGame;->w:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->p:Landroid/widget/TextView;

    const-string v1, ""

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/stefanjm/typer/PracticeGame$2;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/PracticeGame$2;-><init>(Lcom/stefanjm/typer/PracticeGame;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->setContentView(I)V

    const p1, 0x7f0800f6

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff6635

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->A:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p0}, Lcom/stefanjm/typer/PracticeGame;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "wordslist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/stefanjm/typer/PracticeGame;->x:Ljava/util/List;

    const-string v0, "userWordsChosenAmnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/stefanjm/typer/PracticeGame;->y:I

    :cond_0
    invoke-virtual {p0}, Lcom/stefanjm/typer/PracticeGame;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->z:Landroid/media/MediaPlayer;

    const p1, 0x7f0800a9

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->o:Landroid/widget/TextView;

    const p1, 0x7f080045

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->n:Landroid/widget/TextView;

    const p1, 0x7f08009a

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->p:Landroid/widget/TextView;

    const p1, 0x7f0800af

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->r:Landroid/widget/TextView;

    const-string v0, "Your score: 0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800b0

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->s:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->s:Landroid/widget/TextView;

    const-string v0, "Mistakes: 0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800b7

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->t:Landroid/widget/Chronometer;

    iget-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->t:Landroid/widget/Chronometer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->t:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    const p1, 0x7f080103

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/PracticeGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->q:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/stefanjm/typer/PracticeGame;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/stefanjm/typer/PracticeGame$1;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/PracticeGame$1;-><init>(Lcom/stefanjm/typer/PracticeGame;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/PracticeGame;->m()V

    return-void
.end method
