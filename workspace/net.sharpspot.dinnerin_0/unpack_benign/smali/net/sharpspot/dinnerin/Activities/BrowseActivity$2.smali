.class Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/BrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 104
    .local v1, "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->access$3(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "i":Landroid/content/Intent;
    sget-object v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 113
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    const-class v3, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .restart local v0    # "i":Landroid/content/Intent;
    sget-object v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-virtual {v2, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
