.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;
.super Ljava/lang/Thread;
.source "RecipeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->ShareRecipe()V
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 668
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$7(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$8(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/io/File;)V

    .line 673
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$9(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 675
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->dismissDialog(I)V

    .line 676
    return-void
.end method
