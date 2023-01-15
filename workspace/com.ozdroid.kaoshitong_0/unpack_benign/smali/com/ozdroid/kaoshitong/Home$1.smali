.class Lcom/ozdroid/kaoshitong/Home$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


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

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Home;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Home$1;->this$0:Lcom/ozdroid/kaoshitong/Home;

    iput p2, p0, Lcom/ozdroid/kaoshitong/Home$1;->val$index:I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 0
    .param p1, "checkbox"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 4
    .param p1, "checkbox"    # Z

    .prologue
    const/4 v3, 0x5

    .line 179
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Home$1;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "intent"

    iget v2, p0, Lcom/ozdroid/kaoshitong/Home$1;->val$index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Home$1;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    invoke-virtual {v1, v0}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->setIntent(Landroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Home$1;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Home;->access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home$1;->this$0:Lcom/ozdroid/kaoshitong/Home;

    invoke-virtual {v1, v2}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->StartActivity(Landroid/app/Activity;)V

    .line 183
    return-void
.end method
