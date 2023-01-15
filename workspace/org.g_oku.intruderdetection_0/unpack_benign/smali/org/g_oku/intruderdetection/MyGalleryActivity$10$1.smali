.class Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;
.super Landroid/os/AsyncTask;
.source "MyGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    .line 334
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 337
    iget-object v5, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v5}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$6(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/g_oku/intruderdetection/ImageAdapter;

    .line 340
    .local v0, "adapter":Lorg/g_oku/intruderdetection/ImageAdapter;
    iget-object v5, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v5}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$6(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 341
    .local v4, "positions":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 350
    const/4 v5, 0x0

    return-object v5

    .line 342
    :cond_0
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 344
    .local v3, "key":I
    invoke-virtual {v0, v3}, Lorg/g_oku/intruderdetection/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/g_oku/intruderdetection/ImageItem;

    .line 347
    .local v2, "item":Lorg/g_oku/intruderdetection/ImageItem;
    iget-object v5, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v5}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v5

    iget-object v6, v2, Lorg/g_oku/intruderdetection/ImageItem;->path:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$8(Lorg/g_oku/intruderdetection/MyGalleryActivity;Ljava/lang/String;)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 355
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$9(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    .line 357
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    iget-boolean v2, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDeleteFlag:Z

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 360
    .local v1, "view":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 363
    .local v0, "text":Landroid/widget/TextView;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mCurImgPath:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDeleteFlag:Z

    .line 369
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/widget/ImageView;
    :cond_0
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$10$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$10;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$10;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$10;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    return-void
.end method
