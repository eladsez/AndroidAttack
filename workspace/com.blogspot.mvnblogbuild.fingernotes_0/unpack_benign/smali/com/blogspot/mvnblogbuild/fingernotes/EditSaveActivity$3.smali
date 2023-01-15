.class Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$3;
.super Ljava/lang/Object;
.source "EditSaveActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$3;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    invoke-static {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;->access$2(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V

    goto :goto_0
.end method
