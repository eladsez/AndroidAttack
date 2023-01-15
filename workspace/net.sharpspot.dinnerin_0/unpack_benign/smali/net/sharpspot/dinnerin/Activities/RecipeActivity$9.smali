.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$9;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$9;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 764
    move-object v2, p1

    check-cast v2, Landroid/app/Dialog;

    const v3, 0x7f05001a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 766
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 768
    .local v1, "scaleRecipe":Z
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$9;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$9;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v3, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$10(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Landroid/content/DialogInterface;)Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$11(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Lnet/sharpspot/dinnerin/Classes/IngredientClass;Z)V

    .line 769
    return-void
.end method
