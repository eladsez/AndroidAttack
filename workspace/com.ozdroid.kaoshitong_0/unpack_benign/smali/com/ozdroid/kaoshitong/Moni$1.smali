.class Lcom/ozdroid/kaoshitong/Moni$1;
.super Ljava/lang/Object;
.source "Moni.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Moni;->showRember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Moni;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Moni;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick(Z)V
    .locals 4
    .param p1, "checkbox"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ozdroid/kaoshitong/Moni;->access$3(Lcom/ozdroid/kaoshitong/Moni;I)V

    .line 174
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/Moni;->access$4(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ozdroid/kaoshitong/Moni;->access$5(Lcom/ozdroid/kaoshitong/Moni;Ljava/util/List;)V

    .line 175
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v3, v3, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getTestID()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, v1, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 176
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$6(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 177
    return-void
.end method

.method public OnSubmitClick(Z)V
    .locals 4
    .param p1, "checkbox"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getTheMoniLastIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getTheMoniLastIndex()I

    move-result v1

    iput v1, v0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v2}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getMoniLastIndex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ozdroid/kaoshitong/Moni;->access$7(Lcom/ozdroid/kaoshitong/Moni;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ozdroid/kaoshitong/Moni;->access$5(Lcom/ozdroid/kaoshitong/Moni;Ljava/util/List;)V

    .line 187
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$1(Lcom/ozdroid/kaoshitong/Moni;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    iget v3, v3, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;

    invoke-virtual {v0}, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->getTestID()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ozdroid/kaoshitong/sql/TestsDBHelper;->getItemBaseID(I)Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    move-result-object v0

    iput-object v0, v1, Lcom/ozdroid/kaoshitong/Moni;->currentItem:Lcom/ozdroid/kaoshitong/model/TestItemEntry;

    .line 188
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Moni;->access$6(Lcom/ozdroid/kaoshitong/Moni;)V

    .line 189
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Moni$1;->this$0:Lcom/ozdroid/kaoshitong/Moni;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ozdroid/kaoshitong/Moni;->currentIndex:I

    goto :goto_0
.end method
