.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 916
    check-cast p1, Lnet/sharpspot/dinnerin/CustomDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v6, 0x102000a

    invoke-virtual {p1, v6}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 917
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 918
    .local v4, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v5, "tagCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 930
    iget-object v6, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v6}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$4(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v6

    invoke-virtual {v6, v5}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->SetRecipeTagIds(Ljava/util/List;)V

    .line 932
    iget-object v6, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v6}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$26(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v7}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$4(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipeTagDisplayString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    return-void

    .line 922
    :cond_0
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 924
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 925
    .local v3, "position":I
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 926
    .local v1, "item":Lnet/sharpspot/dinnerin/Classes/TagClass;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    .end local v1    # "item":Lnet/sharpspot/dinnerin/Classes/TagClass;
    .end local v3    # "position":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
