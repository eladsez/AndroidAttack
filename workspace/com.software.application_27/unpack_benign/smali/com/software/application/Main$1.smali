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
    .line 174
    iput-object p1, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$000(Lcom/software/application/Main;)Lcom/software/application/Sender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    invoke-static {v0}, Lcom/software/application/Main;->access$100(Lcom/software/application/Main;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    iget-object v1, p0, Lcom/software/application/Main$1;->this$0:Lcom/software/application/Main;

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/software/application/Main;->access$200(Lcom/software/application/Main;Ljava/lang/String;)V

    goto :goto_0
.end method
