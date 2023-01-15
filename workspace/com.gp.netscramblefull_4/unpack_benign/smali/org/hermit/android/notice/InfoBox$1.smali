.class Lorg/hermit/android/notice/InfoBox$1;
.super Ljava/lang/Object;
.source "InfoBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/notice/InfoBox;->createDialog()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/notice/InfoBox;


# direct methods
.method constructor <init>(Lorg/hermit/android/notice/InfoBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/notice/InfoBox$1;->this$0:Lorg/hermit/android/notice/InfoBox;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox$1;->this$0:Lorg/hermit/android/notice/InfoBox;

    invoke-virtual {v0}, Lorg/hermit/android/notice/InfoBox;->okButtonPressed()V

    .line 148
    return-void
.end method
