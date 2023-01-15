.class Lcom/stefanjm/typer/WordsPerMInuteGame$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stefanjm/typer/WordsPerMInuteGame;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/stefanjm/typer/WordsPerMInuteGame;


# direct methods
.method constructor <init>(Lcom/stefanjm/typer/WordsPerMInuteGame;)V
    .locals 1

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->c:I

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget v0, v0, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const-string p3, ""

    iget p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p4, v0, :cond_3

    const-string p4, "How many times typed"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " textChangeCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_4

    :try_start_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v0

    move-object v0, p4

    goto :goto_0

    :catch_0
    move-exception p4

    const-string v0, "Got Backspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorsound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p4, p2, -0x1

    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->d:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p3, p4

    goto :goto_0

    :catch_1
    const-string p4, "Over the word limit"

    const-string v1, " why does this happen"

    invoke-static {p4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->d:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p2, p4, :cond_0

    const-string p4, "Error overwordlimit"

    const-string v1, ""

    invoke-static {p4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p4, "location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "left"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "right"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->d:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    if-ge p1, p4, :cond_1

    const-string p1, "Got Match"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asked for "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " User Input: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->b:I

    iget p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<font color=\'#62f464\'>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</font>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p3, p3, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p3, p3, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    iget-object p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p4, p4, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->length()I

    move-result p4

    invoke-interface {p3, p2, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p2, p2, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p1, "Correct Letters written"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->b:I

    iget-object p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget p2, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->t:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->t:I

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->r:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Your score: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget p3, p3, Lcom/stefanjm/typer/WordsPerMInuteGame;->t:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->n:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p2, p2, Lcom/stefanjm/typer/WordsPerMInuteGame;->w:Ljava/util/List;

    iget-object p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget p3, p3, Lcom/stefanjm/typer/WordsPerMInuteGame;->t:I

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget p2, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->v:I

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    invoke-virtual {p1}, Lcom/stefanjm/typer/WordsPerMInuteGame;->m()V

    return-void

    :cond_1
    const-string p1, "^\\s*$"

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "WhitespaceAlert"

    const-string p2, "got whitespace"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "No Match"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asked for: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " User Input: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->y:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget p3, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->u:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->u:I

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->s:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Mistakes: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget p4, p4, Lcom/stefanjm/typer/WordsPerMInuteGame;->u:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<font color=\'#e50000\'>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</font>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p3, p3, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p3, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p3, p3, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    iget-object p4, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p4, p4, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->length()I

    move-result p4

    invoke-interface {p3, p2, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p2, p2, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->e:Lcom/stefanjm/typer/WordsPerMInuteGame;

    iget-object p1, p1, Lcom/stefanjm/typer/WordsPerMInuteGame;->q:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_3
    iget p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->a:I

    iget p2, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-le p2, p1, :cond_4

    iget p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->b:I

    iget p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/stefanjm/typer/WordsPerMInuteGame$3;->c:I

    :cond_4
    return-void
.end method
