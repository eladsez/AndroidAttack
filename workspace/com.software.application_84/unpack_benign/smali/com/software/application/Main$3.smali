.class Lcom/software/application/Main$3;
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
    iput-object p1, p0, Lcom/software/application/Main$3;->this$0:Lcom/software/application/Main;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/software/application/Main$3;->this$0:Lcom/software/application/Main;

    invoke-virtual {v0}, Lcom/software/application/Main;->finish()V

    .line 215
    return-void
.end method
