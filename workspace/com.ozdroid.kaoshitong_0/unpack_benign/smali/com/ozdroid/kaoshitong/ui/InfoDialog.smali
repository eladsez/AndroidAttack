.class public Lcom/ozdroid/kaoshitong/ui/InfoDialog;
.super Ljava/lang/Object;
.source "InfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private dlg:Landroid/app/Dialog;

.field private factory:Landroid/view/LayoutInflater;

.field private handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

.field private mCancel:Landroid/widget/Button;

.field private mClose:Landroid/widget/Button;

.field private mSubmit:Landroid/widget/Button;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->context:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->factory:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;
    .param p3, "cancel"    # Z

    .prologue
    const/4 v4, 0x0

    .line 28
    iput-object p2, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

    .line 30
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->context:Landroid/content/Context;

    const/high16 v3, 0x7f070000

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->dlg:Landroid/app/Dialog;

    .line 32
    if-eqz p3, :cond_1

    .line 33
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->factory:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "menuView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 39
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 41
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mText:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mSubmit:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    if-eqz p3, :cond_0

    .line 48
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mClose:Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mClose:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_0
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mCancel:Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 35
    .end local v0    # "menuView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->factory:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "menuView":Landroid/view/View;
    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

    .line 73
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

    invoke-interface {v0, v1}, Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;->OnSubmitClick(Z)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->dismiss()V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mCancel:Landroid/widget/Button;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->mClose:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->handler:Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;

    invoke-interface {v0, v1}, Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;->OnCancelClick(Z)V

    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->dismiss()V

    goto :goto_0
.end method
