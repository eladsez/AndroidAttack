.class Lcom/picvision/seaweedweather/SpActivity$1;
.super Ljava/lang/Object;
.source "SpActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/SpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/SpActivity;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/SpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 107
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iput p3, v3, Lcom/picvision/seaweedweather/SpActivity;->position:I

    .line 108
    iget-object v3, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v3, v3, Lcom/picvision/seaweedweather/SpActivity;->spList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picvision/seaweedweather/model/Sp;

    invoke-virtual {v3}, Lcom/picvision/seaweedweather/model/Sp;->getRecommendList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 109
    .local v1, "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/picvision/seaweedweather/model/Recommend;>;"
    iget-object v3, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 110
    .local v2, "img":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v3, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    const v5, 0x7f09000a

    invoke-virtual {v3, v5}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iput-object v3, v4, Lcom/picvision/seaweedweather/SpActivity;->spnameGallery:Landroid/widget/Gallery;

    .line 111
    new-instance v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;

    iget-object v3, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v3, v3, Lcom/picvision/seaweedweather/SpActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/picvision/seaweedweather/views/RecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 112
    .local v0, "adapter":Lcom/picvision/seaweedweather/views/RecommendAdapter;
    iget-object v3, p0, Lcom/picvision/seaweedweather/SpActivity$1;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v3, v3, Lcom/picvision/seaweedweather/SpActivity;->mg:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v3, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
