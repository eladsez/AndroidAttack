.class Lcom/picvision/seaweedweather/main$17;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$17;->this$0:Lcom/picvision/seaweedweather/main;

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$17;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/main;->finish()V

    .line 1142
    return-void
.end method
