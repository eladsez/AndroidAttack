.class public Lcom/picvision/seaweedweather/SpActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/SpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/SpActivity;


# direct methods
.method public constructor <init>(Lcom/picvision/seaweedweather/SpActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceive() -"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateSpPics"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const-string v4, "position"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 168
    .local v3, "nowposition":I
    iget-object v4, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v4, v4, Lcom/picvision/seaweedweather/SpActivity;->spList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget v5, v5, Lcom/picvision/seaweedweather/SpActivity;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picvision/seaweedweather/model/Sp;

    invoke-virtual {v4}, Lcom/picvision/seaweedweather/model/Sp;->getRecommendList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 169
    .local v1, "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/picvision/seaweedweather/model/Recommend;>;"
    iget-object v4, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 170
    .local v2, "img":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v4, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    const v6, 0x7f09000a

    invoke-virtual {v4, v6}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Gallery;

    iput-object v4, v5, Lcom/picvision/seaweedweather/SpActivity;->spnameGallery:Landroid/widget/Gallery;

    .line 171
    new-instance v0, Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-direct {v0, p1, v1}, Lcom/picvision/seaweedweather/views/RecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 172
    .local v0, "adapter":Lcom/picvision/seaweedweather/views/RecommendAdapter;
    iget-object v4, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v4, v4, Lcom/picvision/seaweedweather/SpActivity;->mg:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v4, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object v4, p0, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    iget-object v4, v4, Lcom/picvision/seaweedweather/SpActivity;->mg:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v4, v3}, Lcom/picvision/seaweedweather/views/MyGallery;->setSelection(I)V

    .line 176
    .end local v0    # "adapter":Lcom/picvision/seaweedweather/views/RecommendAdapter;
    .end local v1    # "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/picvision/seaweedweather/model/Recommend;>;"
    .end local v2    # "img":Landroid/widget/ImageView;
    .end local v3    # "nowposition":I
    :cond_0
    return-void
.end method
