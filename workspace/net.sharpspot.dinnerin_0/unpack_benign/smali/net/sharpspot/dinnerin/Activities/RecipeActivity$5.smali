.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;
.super Landroid/os/Handler;
.source "RecipeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 680
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 685
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$3(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$3(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 689
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recipe: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v4}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$4(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attached is a recipe sent from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 695
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const-string v3, "Share Recipe"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->startActivity(Landroid/content/Intent;)V

    .line 697
    .end local v0    # "sendIntent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
