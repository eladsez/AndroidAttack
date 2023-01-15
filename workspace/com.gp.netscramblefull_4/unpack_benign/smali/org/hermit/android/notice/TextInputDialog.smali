.class public Lorg/hermit/android/notice/TextInputDialog;
.super Landroid/app/AlertDialog;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/notice/TextInputDialog$OnOkListener;
    }
.end annotation


# instance fields
.field private inputField:Landroid/widget/EditText;

.field private inputPrompt:Landroid/widget/TextView;

.field private listener:Lorg/hermit/android/notice/TextInputDialog$OnOkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "parent"    # Landroid/content/Context;
    .param p2, "okBut"    # I
    .param p3, "cancelBut"    # I

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/hermit/android/notice/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/content/Context;
    .param p2, "okBut"    # Ljava/lang/CharSequence;
    .param p3, "cancelBut"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->listener:Lorg/hermit/android/notice/TextInputDialog$OnOkListener;

    .line 89
    const v0, 0x108009b

    invoke-virtual {p0, v0}, Lorg/hermit/android/notice/TextInputDialog;->setIcon(I)V

    .line 92
    invoke-direct {p0, p1}, Lorg/hermit/android/notice/TextInputDialog;->createInputView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hermit/android/notice/TextInputDialog;->setView(Landroid/view/View;)V

    .line 95
    const/4 v0, -0x1

    new-instance v1, Lorg/hermit/android/notice/TextInputDialog$1;

    invoke-direct {v1, p0}, Lorg/hermit/android/notice/TextInputDialog$1;-><init>(Lorg/hermit/android/notice/TextInputDialog;)V

    invoke-virtual {p0, v0, p2, v1}, Lorg/hermit/android/notice/TextInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    const/4 v0, -0x2

    new-instance v1, Lorg/hermit/android/notice/TextInputDialog$2;

    invoke-direct {v1, p0}, Lorg/hermit/android/notice/TextInputDialog$2;-><init>(Lorg/hermit/android/notice/TextInputDialog;)V

    invoke-virtual {p0, v0, p3, v1}, Lorg/hermit/android/notice/TextInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    return-void
.end method

.method private createInputView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "parent"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0x14

    .line 119
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, "view":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    .line 124
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    const-string v3, "Enter text:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5, v5, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    .line 134
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 135
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 136
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    const v3, 0x1010041

    invoke-virtual {v2, p1, v3}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 138
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5, v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    iget-object v2, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-object v1
.end method


# virtual methods
.method okButtonPressed()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/hermit/android/notice/TextInputDialog;->dismiss()V

    .line 225
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->listener:Lorg/hermit/android/notice/TextInputDialog$OnOkListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->listener:Lorg/hermit/android/notice/TextInputDialog$OnOkListener;

    iget-object v1, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hermit/android/notice/TextInputDialog$OnOkListener;->onOk(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setOnOkListener(Lorg/hermit/android/notice/TextInputDialog$OnOkListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/hermit/android/notice/TextInputDialog$OnOkListener;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/hermit/android/notice/TextInputDialog;->listener:Lorg/hermit/android/notice/TextInputDialog$OnOkListener;

    .line 157
    return-void
.end method

.method public show(II)V
    .locals 1
    .param p1, "title"    # I
    .param p2, "text"    # I

    .prologue
    .line 168
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lorg/hermit/android/notice/TextInputDialog;->show(IILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public show(IILjava/lang/String;)V
    .locals 1
    .param p1, "title"    # I
    .param p2, "text"    # I
    .param p3, "dflt"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/hermit/android/notice/TextInputDialog;->setTitle(I)V

    .line 182
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lorg/hermit/android/notice/TextInputDialog;->show()V

    .line 185
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lorg/hermit/android/notice/TextInputDialog;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "dflt"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lorg/hermit/android/notice/TextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->inputPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Lorg/hermit/android/notice/TextInputDialog;->show()V

    .line 213
    return-void
.end method
