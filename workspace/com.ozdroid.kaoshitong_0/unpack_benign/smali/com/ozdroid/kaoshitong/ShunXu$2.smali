.class Lcom/ozdroid/kaoshitong/ShunXu$2;
.super Ljava/lang/Object;
.source "ShunXu.java"

# interfaces
.implements Lcom/ozdroid/kaoshitong/ui/SwithTestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ozdroid/kaoshitong/ShunXu;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ozdroid/kaoshitong/ShunXu;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/ShunXu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ShunXu$2;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSubmitClick(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$2;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    iput p1, v0, Lcom/ozdroid/kaoshitong/ShunXu;->currentIndex:I

    .line 150
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$2;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/ShunXu;->access$3(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 151
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ShunXu$2;->this$0:Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-static {v0}, Lcom/ozdroid/kaoshitong/ShunXu;->access$4(Lcom/ozdroid/kaoshitong/ShunXu;)V

    .line 152
    return-void
.end method
