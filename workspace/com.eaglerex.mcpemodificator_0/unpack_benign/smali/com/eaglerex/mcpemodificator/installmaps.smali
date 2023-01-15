.class public Lcom/eaglerex/mcpemodificator/installmaps;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/installmaps;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->setContentView(I)V

    const v0, 0x7f050054

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->a:Landroid/widget/TextView;

    const v0, 0x7f050055

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->b:Landroid/widget/TextView;

    const v0, 0x7f050056

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->c:Landroid/widget/TextView;

    const v0, 0x7f050057

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->d:Landroid/widget/TextView;

    const v0, 0x7f050058

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->e:Landroid/widget/TextView;

    const v0, 0x7f050059

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/installmaps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->f:Landroid/widget/TextView;

    const-string v0, "Step 1 : "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->g:Ljava/lang/String;

    const-string v0, "Open The File Manager Of Your Choice(Es File Explorer Is Recomended)"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->h:Ljava/lang/String;

    const-string v0, "Step 2 : "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->i:Ljava/lang/String;

    const-string v0, "Find And Open The mcpemodificator Folder"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->j:Ljava/lang/String;

    const-string v0, "Step 3 : "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->k:Ljava/lang/String;

    const-string v0, "Extract The Map Zip File That You Want To Play"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->l:Ljava/lang/String;

    const-string v0, "Step 4 : "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->m:Ljava/lang/String;

    const-string v0, "Copy The Folder Inside The Extracted Folder (Sometimes You Have To Copy The Extracted Folder)"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->n:Ljava/lang/String;

    const-string v0, "Step 5 : "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->o:Ljava/lang/String;

    const-string v0, "Paste The Folder In games/com.mojang/minecraftworlds"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->p:Ljava/lang/String;

    const-string v0, "Step 6 : "

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->q:Ljava/lang/String;

    const-string v0, "The Map Has Been Installed, Enjoy!"

    iput-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/installmaps;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/installmaps;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
