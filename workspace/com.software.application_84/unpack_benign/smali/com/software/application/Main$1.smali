.class Lcom/software/application/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/application/Main;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/software/application/Main;


# direct methods
.method constructor <init>(Lcom/software/application/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$2(Lcom/software/application/Main;)Lcom/software/application/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/application/Actor;->sendNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$6(Lcom/software/application/Main;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$7(Lcom/software/application/Main;)V

    goto :goto_0
.end method
