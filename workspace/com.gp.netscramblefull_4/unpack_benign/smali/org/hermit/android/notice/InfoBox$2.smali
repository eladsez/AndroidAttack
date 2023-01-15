.class Lorg/hermit/android/notice/InfoBox$2;
.super Ljava/lang/Object;
.source "InfoBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/notice/InfoBox;->setLinkButton(III)V
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
    iput-object p1, p0, Lorg/hermit/android/notice/InfoBox$2;->this$0:Lorg/hermit/android/notice/InfoBox;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "b"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox$2;->this$0:Lorg/hermit/android/notice/InfoBox;

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "b":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/hermit/android/notice/InfoBox;->linkButtonPressed(I)V

    .line 181
    return-void
.end method
