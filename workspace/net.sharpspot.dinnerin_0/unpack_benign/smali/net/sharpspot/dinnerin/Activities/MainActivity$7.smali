.class Lnet/sharpspot/dinnerin/Activities/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity$7;->this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity$7;->this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;

    const-class v2, Lnet/sharpspot/dinnerin/Activities/TagActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/MainActivity$7;->this$0:Lnet/sharpspot/dinnerin/Activities/MainActivity;

    invoke-virtual {v1, v0}, Lnet/sharpspot/dinnerin/Activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method
