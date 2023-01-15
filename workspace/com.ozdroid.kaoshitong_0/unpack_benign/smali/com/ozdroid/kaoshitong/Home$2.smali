.class Lcom/ozdroid/kaoshitong/Home$2;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/SinpperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Home;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Home;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Home$2;->this$0:Lcom/ozdroid/kaoshitong/Home;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSCancelClick()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public OnSubmitClick(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 194
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->open()V

    .line 195
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;

    .line 196
    .local v1, "item":Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->close()V

    .line 197
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home$2;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "min"

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->getStart()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v2, "max"

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->getEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home$2;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    invoke-virtual {v2, v0}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->setIntent(Landroid/content/Intent;)V

    .line 201
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home$2;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Home$2;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-virtual {v2, v3}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->StartActivity(Landroid/app/Activity;)V

    .line 202
    return-void
.end method
