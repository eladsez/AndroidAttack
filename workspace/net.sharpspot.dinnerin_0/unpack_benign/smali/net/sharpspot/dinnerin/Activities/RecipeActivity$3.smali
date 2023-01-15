.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;
.super Ljava/lang/Object;
.source "RecipeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;
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
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 337
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
    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$2(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 342
    .local v1, "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const-class v3, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .local v0, "i":Landroid/content/Intent;
    sget-object v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-virtual {v2, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method
