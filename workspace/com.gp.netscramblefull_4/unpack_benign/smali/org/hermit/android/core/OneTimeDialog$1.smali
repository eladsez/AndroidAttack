.class Lorg/hermit/android/core/OneTimeDialog$1;
.super Lorg/hermit/android/notice/InfoBox;
.source "OneTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/core/OneTimeDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/core/OneTimeDialog;


# direct methods
.method constructor <init>(Lorg/hermit/android/core/OneTimeDialog;Landroid/app/Activity;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/core/OneTimeDialog$1;->this$0:Lorg/hermit/android/core/OneTimeDialog;

    .line 101
    invoke-direct {p0, p2, p3}, Lorg/hermit/android/notice/InfoBox;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method protected okButtonPressed()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/hermit/android/core/OneTimeDialog$1;->this$0:Lorg/hermit/android/core/OneTimeDialog;

    invoke-static {v0}, Lorg/hermit/android/core/OneTimeDialog;->access$0(Lorg/hermit/android/core/OneTimeDialog;)V

    .line 105
    invoke-super {p0}, Lorg/hermit/android/notice/InfoBox;->okButtonPressed()V

    .line 106
    return-void
.end method
