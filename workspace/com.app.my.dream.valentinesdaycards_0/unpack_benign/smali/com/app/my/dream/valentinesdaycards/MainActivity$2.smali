.class Lcom/app/my/dream/valentinesdaycards/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/my/dream/valentinesdaycards/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/my/dream/valentinesdaycards/MainActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iput p2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v0, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->imageViewOut:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-static {v2}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->access$100(Lcom/app/my/dream/valentinesdaycards/MainActivity;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->val$pos:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->access$200(Lcom/app/my/dream/valentinesdaycards/MainActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v0, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->im1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-static {v2}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->access$100(Lcom/app/my/dream/valentinesdaycards/MainActivity;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->val$pos:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->access$200(Lcom/app/my/dream/valentinesdaycards/MainActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget v1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->val$pos:I

    iput v1, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->pos1:I

    .line 131
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v0, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Happy New Year Total :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-static {v2}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->access$100(Lcom/app/my/dream/valentinesdaycards/MainActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Greetings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget v1, v1, Lcom/app/my/dream/valentinesdaycards/MainActivity;->addclick:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->addclick:I

    .line 136
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget v0, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->addclick:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v0, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v0, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 139
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$2;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/app/my/dream/valentinesdaycards/MainActivity;->addclick:I

    .line 145
    :cond_0
    return-void
.end method
