.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 794
    const/4 v1, 0x0

    .line 795
    .local v1, "recipeTextView":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 797
    .local v0, "dialogTextView":Landroid/widget/TextView;
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$13(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 799
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$13(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "recipeTextView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 800
    .restart local v1    # "recipeTextView":Landroid/widget/TextView;
    check-cast p1, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialogTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 802
    .restart local v0    # "dialogTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$14(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$15(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$14(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$13(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 805
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$15(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    :cond_0
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$16(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/lang/Integer;)V

    .line 809
    :cond_1
    return-void
.end method
