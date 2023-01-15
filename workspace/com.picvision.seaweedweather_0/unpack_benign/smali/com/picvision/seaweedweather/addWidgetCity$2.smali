.class Lcom/picvision/seaweedweather/addWidgetCity$2;
.super Ljava/lang/Object;
.source "addWidgetCity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/addWidgetCity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/addWidgetCity;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/addWidgetCity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/addWidgetCity$2;->this$0:Lcom/picvision/seaweedweather/addWidgetCity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/picvision/seaweedweather/addWidgetCity$2;->this$0:Lcom/picvision/seaweedweather/addWidgetCity;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/addWidgetCity;->finish()V

    .line 102
    return-void
.end method
