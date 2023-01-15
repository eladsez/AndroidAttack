.class Lcom/picvision/seaweedweather/ShowImageActivity$2;
.super Ljava/lang/Object;
.source "ShowImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/ShowImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/ShowImageActivity;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/ShowImageActivity$2;->this$0:Lcom/picvision/seaweedweather/ShowImageActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/picvision/seaweedweather/ShowImageActivity$2;->this$0:Lcom/picvision/seaweedweather/ShowImageActivity;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/ShowImageActivity;->finish()V

    .line 82
    return-void
.end method
