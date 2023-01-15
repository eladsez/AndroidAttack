.class Lcom/ozdroid/kaoshitong/SuiJi$1;
.super Ljava/lang/Object;
.source "SuiJi.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/SinpperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/SuiJi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/SuiJi;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/SuiJi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSCancelClick()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public OnSubmitClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->open()V

    .line 119
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;

    .line 120
    .local v0, "item":Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->close()V

    .line 122
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->getStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->access$4(Lcom/ozdroid/kaoshitong/SuiJi;I)V

    .line 123
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->getEnd()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ozdroid/kaoshitong/SuiJi;->access$5(Lcom/ozdroid/kaoshitong/SuiJi;I)V

    .line 125
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/SuiJi;->access$1(Lcom/ozdroid/kaoshitong/SuiJi;)I

    move-result v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-static {v3}, Lcom/ozdroid/kaoshitong/SuiJi;->access$2(Lcom/ozdroid/kaoshitong/SuiJi;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/ozdroid/kaoshitong/helper/Utils;->getRandom(II)I

    move-result v2

    iput v2, v1, Lcom/ozdroid/kaoshitong/SuiJi;->currentIndex:I

    .line 126
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/SuiJi$1;->this$0:Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/SuiJi;->access$3(Lcom/ozdroid/kaoshitong/SuiJi;)V

    .line 127
    return-void
.end method
