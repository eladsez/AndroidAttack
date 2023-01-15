.class Lcom/ozdroid/kaoshitong/Cuowu$2;
.super Ljava/lang/Object;
.source "Cuowu.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/SwithTestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/Cuowu;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/Cuowu;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Cuowu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Cuowu$2;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSubmitClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 180
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$2;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    iput v1, v0, Lcom/ozdroid/kaoshitong/Cuowu;->currentIndex:I

    .line 182
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$2;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Cuowu;->access$3(Lcom/ozdroid/kaoshitong/Cuowu;)V

    .line 183
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Cuowu$2;->this$0:Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/Cuowu;->access$4(Lcom/ozdroid/kaoshitong/Cuowu;)V

    .line 184
    return-void
.end method
