.class public Lcom/stefanjm/typer/WordsPerMInuteGame;
.super Landroid/support/v7/app/c;


# instance fields
.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/EditText;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:I

.field u:I

.field v:I

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:Landroid/os/CountDownTimer;

.field y:Landroid/media/MediaPlayer;

.field private z:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->t:I

    iput v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    iget v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->o:Landroid/widget/TextView;

    const-string v1, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/stefanjm/typer/WordsPerMInuteGame$3;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/WordsPerMInuteGame$3;-><init>(Lcom/stefanjm/typer/WordsPerMInuteGame;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->setContentView(I)V

    const p1, 0x7f0800f6

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff6635

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->z:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p0}, Lcom/stefanjm/typer/WordsPerMInuteGame;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "wordslist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    const-string p1, "how many words"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/stefanjm/typer/WordsPerMInuteGame;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->y:Landroid/media/MediaPlayer;

    const p1, 0x7f0800a9

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->o:Landroid/widget/TextView;

    const p1, 0x7f080045

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->n:Landroid/widget/TextView;

    const p1, 0x7f08009a

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->p:Landroid/widget/TextView;

    const p1, 0x7f0800af

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->r:Landroid/widget/TextView;

    const-string v0, "Your score: 0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800b0

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->s:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->s:Landroid/widget/TextView;

    const-string v0, "Mistakes: 0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080037

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    const/4 p1, 0x2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v6, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/stefanjm/typer/WordsPerMInuteGame$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/stefanjm/typer/WordsPerMInuteGame$1;-><init>(Lcom/stefanjm/typer/WordsPerMInuteGame;JJLandroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/stefanjm/typer/WordsPerMInuteGame$1;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->x:Landroid/os/CountDownTimer;

    const p1, 0x7f080103

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/stefanjm/typer/WordsPerMInuteGame$2;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/WordsPerMInuteGame$2;-><init>(Lcom/stefanjm/typer/WordsPerMInuteGame;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/WordsPerMInuteGame;->m()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame;->x:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "Activity exited"

    const-string v1, "WordsPerMinuteGame activity destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v7/app/c;->onDestroy()V

    return-void
.end method
