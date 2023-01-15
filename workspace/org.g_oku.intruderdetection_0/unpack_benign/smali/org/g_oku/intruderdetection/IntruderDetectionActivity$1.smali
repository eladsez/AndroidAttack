.class Lorg/g_oku/intruderdetection/IntruderDetectionActivity$1;
.super Ljava/lang/Object;
.source "IntruderDetectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/IntruderDetectionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$1;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/g_oku/intruderdetection/IntruderDetectionActivity$1;->this$0:Lorg/g_oku/intruderdetection/IntruderDetectionActivity;

    invoke-virtual {v0}, Lorg/g_oku/intruderdetection/IntruderDetectionActivity;->finish()V

    .line 54
    return-void
.end method
