.class public Lcom/software/application/ShowLink;
.super Landroid/app/Activity;
.source "ShowLink.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/software/application/ShowLink;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/software/application/ShowLink;->url:Ljava/lang/String;

    return-object v0
.end method

.method private initButton()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/software/application/ShowLink;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/software/application/ShowLink;->mButton:Landroid/widget/Button;

    .line 52
    invoke-direct {p0}, Lcom/software/application/ShowLink;->setListener()V

    .line 53
    return-void
.end method

.method private initTextView()V
    .locals 4

    .prologue
    .line 45
    const/high16 v1, 0x7f090000

    invoke-virtual {p0, v1}, Lcom/software/application/ShowLink;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/software/application/ShowLink;->mTextView:Landroid/widget/TextView;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/software/application/ShowLink;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/software/application/ShowLink;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/software/application/ShowLink;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/software/application/ShowLink;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/software/application/ShowLink$1;

    invoke-direct {v1, p0}, Lcom/software/application/ShowLink$1;-><init>(Lcom/software/application/ShowLink;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/software/application/ShowLink;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/software/application/ShowLink;->initButton()V

    .line 29
    invoke-virtual {p0}, Lcom/software/application/ShowLink;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/ShowLink;->url:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/software/application/ShowLink;->initTextView()V

    .line 31
    return-void
.end method
