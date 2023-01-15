.class Lcom/picvision/seaweedweather/utils/UpdateSoft$1;
.super Ljava/lang/Object;
.source "UpdateSoft.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/utils/UpdateSoft;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/utils/UpdateSoft;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/utils/UpdateSoft;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft$1;->this$0:Lcom/picvision/seaweedweather/utils/UpdateSoft;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/picvision/seaweedweather/utils/UpdateSoft$1;->this$0:Lcom/picvision/seaweedweather/utils/UpdateSoft;

    invoke-static {v0, v1}, Lcom/picvision/seaweedweather/utils/UpdateSoft;->access$0(Lcom/picvision/seaweedweather/utils/UpdateSoft;Z)V

    .line 41
    return v1
.end method
