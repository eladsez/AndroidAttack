.class Lcom/ozdroid/kaoshitong/JiaQiang$2;
.super Ljava/lang/Object;
.source "JiaQiang.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/SwithTestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/JiaQiang;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/JiaQiang;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/JiaQiang;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/JiaQiang$2;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSubmitClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 182
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

    .line 183
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang$2;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    iput v1, v0, Lcom/ozdroid/kaoshitong/JiaQiang;->currentIndex:I

    .line 184
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang$2;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$3(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 185
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/JiaQiang$2;->this$0:Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/JiaQiang;->access$4(Lcom/ozdroid/kaoshitong/JiaQiang;)V

    .line 186
    return-void
.end method
