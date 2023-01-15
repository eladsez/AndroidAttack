.class Lorg/hermit/android/notice/ErrorDialog$1;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/notice/ErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/notice/ErrorDialog;


# direct methods
.method constructor <init>(Lorg/hermit/android/notice/ErrorDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/notice/ErrorDialog$1;->this$0:Lorg/hermit/android/notice/ErrorDialog;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/hermit/android/notice/ErrorDialog$1;->this$0:Lorg/hermit/android/notice/ErrorDialog;

    invoke-virtual {v0}, Lorg/hermit/android/notice/ErrorDialog;->okButtonPressed()V

    .line 65
    return-void
.end method
