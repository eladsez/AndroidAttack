.class Lorg/hermit/android/notice/TextInputDialog$1;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/notice/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/notice/TextInputDialog;


# direct methods
.method constructor <init>(Lorg/hermit/android/notice/TextInputDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/notice/TextInputDialog$1;->this$0:Lorg/hermit/android/notice/TextInputDialog;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/hermit/android/notice/TextInputDialog$1;->this$0:Lorg/hermit/android/notice/TextInputDialog;

    invoke-virtual {v0}, Lorg/hermit/android/notice/TextInputDialog;->okButtonPressed()V

    .line 99
    return-void
.end method
