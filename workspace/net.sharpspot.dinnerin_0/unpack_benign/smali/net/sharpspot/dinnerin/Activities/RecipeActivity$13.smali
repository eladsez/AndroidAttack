.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;
.super Ljava/lang/Object;
.source "RecipeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 835
    const/4 v1, 0x0

    .line 837
    .local v1, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$17(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$4(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$17(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    check-cast v1, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 841
    .restart local v1    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    check-cast p1, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 843
    .local v0, "dialogTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setDescription(Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$18(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 847
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$19(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/lang/Integer;)V

    .line 849
    .end local v0    # "dialogTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
