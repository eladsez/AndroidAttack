.class public Lorg/hermit/android/notice/YesNoDialog;
.super Landroid/app/AlertDialog;
.source "YesNoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/notice/YesNoDialog$OnOkListener;
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private listener:Lorg/hermit/android/notice/YesNoDialog$OnOkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "parent"    # Landroid/content/Context;
    .param p2, "okBut"    # I
    .param p3, "cancelBut"    # I

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/hermit/android/notice/YesNoDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/content/Context;
    .param p2, "okBut"    # Ljava/lang/CharSequence;
    .param p3, "cancelBut"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/notice/YesNoDialog;->listener:Lorg/hermit/android/notice/YesNoDialog$OnOkListener;

    .line 76
    iput-object p1, p0, Lorg/hermit/android/notice/YesNoDialog;->appContext:Landroid/content/Context;

    .line 79
    const v0, 0x108009b

    invoke-virtual {p0, v0}, Lorg/hermit/android/notice/YesNoDialog;->setIcon(I)V

    .line 82
    const/4 v0, -0x1

    new-instance v1, Lorg/hermit/android/notice/YesNoDialog$1;

    invoke-direct {v1, p0}, Lorg/hermit/android/notice/YesNoDialog$1;-><init>(Lorg/hermit/android/notice/YesNoDialog;)V

    invoke-virtual {p0, v0, p2, v1}, Lorg/hermit/android/notice/YesNoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    const/4 v0, -0x2

    new-instance v1, Lorg/hermit/android/notice/YesNoDialog$2;

    invoke-direct {v1, p0}, Lorg/hermit/android/notice/YesNoDialog$2;-><init>(Lorg/hermit/android/notice/YesNoDialog;)V

    invoke-virtual {p0, v0, p3, v1}, Lorg/hermit/android/notice/YesNoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method okButtonPressed()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/hermit/android/notice/YesNoDialog;->dismiss()V

    .line 146
    iget-object v0, p0, Lorg/hermit/android/notice/YesNoDialog;->listener:Lorg/hermit/android/notice/YesNoDialog$OnOkListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/hermit/android/notice/YesNoDialog;->listener:Lorg/hermit/android/notice/YesNoDialog$OnOkListener;

    invoke-interface {v0}, Lorg/hermit/android/notice/YesNoDialog$OnOkListener;->onOk()V

    .line 148
    :cond_0
    return-void
.end method

.method public setOnOkListener(Lorg/hermit/android/notice/YesNoDialog$OnOkListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/hermit/android/notice/YesNoDialog$OnOkListener;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/hermit/android/notice/YesNoDialog;->listener:Lorg/hermit/android/notice/YesNoDialog$OnOkListener;

    .line 108
    return-void
.end method

.method public show(II)V
    .locals 2
    .param p1, "title"    # I
    .param p2, "text"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/hermit/android/notice/YesNoDialog;->appContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/notice/YesNoDialog;->appContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/hermit/android/notice/YesNoDialog;->show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/hermit/android/notice/YesNoDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0, p2}, Lorg/hermit/android/notice/YesNoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lorg/hermit/android/notice/YesNoDialog;->show()V

    .line 134
    return-void
.end method
