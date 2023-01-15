.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;
.super Ljava/lang/Object;
.source "RecipeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$17(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$17(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$20(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V

    .line 884
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$21(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$21(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$22(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V

    goto :goto_0

    .line 874
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$23(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 875
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$23(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$24(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$4(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->Delete()V

    .line 879
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$25(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Lnet/sharpspot/dinnerin/Classes/RecipeClass;)V

    .line 881
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->finish()V

    goto :goto_0
.end method
