.class public Lorg/hermit/android/notice/ErrorDialog;
.super Landroid/app/AlertDialog;
.source "ErrorDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "parent"    # Landroid/content/Context;
    .param p2, "button"    # I

    .prologue
    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/notice/ErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "parent"    # Landroid/content/Context;
    .param p2, "button"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 60
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Lorg/hermit/android/notice/ErrorDialog;->setIcon(I)V

    .line 61
    new-instance v0, Lorg/hermit/android/notice/ErrorDialog$1;

    invoke-direct {v0, p0}, Lorg/hermit/android/notice/ErrorDialog$1;-><init>(Lorg/hermit/android/notice/ErrorDialog;)V

    invoke-virtual {p0, p2, v0}, Lorg/hermit/android/notice/ErrorDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method okButtonPressed()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/hermit/android/notice/ErrorDialog;->dismiss()V

    .line 109
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/hermit/android/notice/ErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lorg/hermit/android/notice/ErrorDialog;->show()V

    .line 97
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/hermit/android/notice/ErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, p2}, Lorg/hermit/android/notice/ErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lorg/hermit/android/notice/ErrorDialog;->show()V

    .line 85
    return-void
.end method
