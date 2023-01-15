.class Lcom/picvision/seaweedweather/main$1$4;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/main$1;

.field private final synthetic val$information:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main$1;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$1$4;->this$1:Lcom/picvision/seaweedweather/main$1;

    iput-object p2, p0, Lcom/picvision/seaweedweather/main$1$4;->val$information:[Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 427
    new-instance v0, Lcom/picvision/seaweedweather/utils/UpdateSoft;

    iget-object v1, p0, Lcom/picvision/seaweedweather/main$1$4;->this$1:Lcom/picvision/seaweedweather/main$1;

    invoke-static {v1}, Lcom/picvision/seaweedweather/main$1;->access$0(Lcom/picvision/seaweedweather/main$1;)Lcom/picvision/seaweedweather/main;

    move-result-object v1

    iget-object v2, p0, Lcom/picvision/seaweedweather/main$1$4;->val$information:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/picvision/seaweedweather/utils/UpdateSoft;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    .local v0, "Dialog":Lcom/picvision/seaweedweather/utils/UpdateSoft;
    invoke-virtual {v0, v3}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->setProgressStyle(I)V

    .line 429
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->setMax(I)V

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->setProgress(I)V

    .line 431
    const-string v1, "\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->setMessage(Ljava/lang/CharSequence;)V

    .line 432
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->show()V

    .line 434
    return-void
.end method
