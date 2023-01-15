.class Lcom/picvision/seaweedweather/SpActivity$2;
.super Ljava/lang/Object;
.source "SpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/SpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/SpActivity;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/SpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/SpActivity$2;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/picvision/seaweedweather/SpActivity$2;->this$0:Lcom/picvision/seaweedweather/SpActivity;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/SpActivity;->finish()V

    .line 134
    return-void
.end method
