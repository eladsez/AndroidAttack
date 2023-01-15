.class public Lcom/stefanjm/typer/NoMistakesGame;
.super Landroid/support/v7/app/c;


# instance fields
.field private A:Lcom/google/firebase/analytics/FirebaseAnalytics;

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

.field y:Z

.field z:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->t:I

    iput v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/stefanjm/typer/NoMistakesGame;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 8

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    new-instance v0, Lcom/stefanjm/typer/NoMistakesGame$2;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/stefanjm/typer/NoMistakesGame$2;-><init>(Lcom/stefanjm/typer/NoMistakesGame;JJLandroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/stefanjm/typer/NoMistakesGame$2;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->x:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    iget v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->v:I

    iget-object v1, p0, Lcom/stefanjm/typer/NoMistakesGame;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->x:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "stop"

    const-string v1, "k\u00f5ik s\u00f5nad l\u00e4bi k\u00e4idud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/stefanjm/typer/NoMistakesGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/stefanjm/typer/ResultScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "typeofgame"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "score"

    iget v2, p0, Lcom/stefanjm/typer/NoMistakesGame;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mistakes"

    iget v2, p0, Lcom/stefanjm/typer/NoMistakesGame;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gameKeyWords"

    iget-object v2, p0, Lcom/stefanjm/typer/NoMistakesGame;->w:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/stefanjm/typer/NoMistakesGame;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/NoMistakesGame;->finish()V

    return-void

    :cond_0
    iget v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->v:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/NoMistakesGame;->w:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/NoMistakesGame;->v:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->o:Landroid/widget/TextView;

    const-string v1, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/NoMistakesGame;->w:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/NoMistakesGame;->v:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stefanjm/typer/NoMistakesGame;->w:Ljava/util/List;

    iget v2, p0, Lcom/stefanjm/typer/NoMistakesGame;->v:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/stefanjm/typer/NoMistakesGame$3;

    invoke-direct {v1, p0}, Lcom/stefanjm/typer/NoMistakesGame$3;-><init>(Lcom/stefanjm/typer/NoMistakesGame;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->setContentView(I)V

    const p1, 0x7f0800f6

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff6635

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->A:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p0}, Lcom/stefanjm/typer/NoMistakesGame;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "wordslist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->w:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lcom/stefanjm/typer/NoMistakesGame;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->z:Landroid/media/MediaPlayer;

    const p1, 0x7f0800a9

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->o:Landroid/widget/TextView;

    const p1, 0x7f080045

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->n:Landroid/widget/TextView;

    const p1, 0x7f08009a

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->p:Landroid/widget/TextView;

    const p1, 0x7f0800af

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->r:Landroid/widget/TextView;

    const-string v0, "Your score: 0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800b0

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->s:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->s:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f080037

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x2710

    invoke-direct {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->c(I)V

    const p1, 0x7f080103

    invoke-virtual {p0, p1}, Lcom/stefanjm/typer/NoMistakesGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->q:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/stefanjm/typer/NoMistakesGame;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/stefanjm/typer/NoMistakesGame$1;

    invoke-direct {v0, p0}, Lcom/stefanjm/typer/NoMistakesGame$1;-><init>(Lcom/stefanjm/typer/NoMistakesGame;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/stefanjm/typer/NoMistakesGame;->m()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/stefanjm/typer/NoMistakesGame;->x:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "Activity exited"

    const-string v1, "nomistakesGame activity destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v7/app/c;->onDestroy()V

    return-void
.end method
