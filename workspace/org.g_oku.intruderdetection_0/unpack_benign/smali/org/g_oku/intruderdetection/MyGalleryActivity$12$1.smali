.class Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;
.super Landroid/os/AsyncTask;
.source "MyGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    .line 522
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/g_oku/intruderdetection/FileDataUtil;->getApplicationBitmapFileList(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 531
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 535
    const/4 v2, 0x0

    return-object v2

    .line 532
    :cond_0
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$8(Lorg/g_oku/intruderdetection/MyGalleryActivity;Ljava/lang/String;)V

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 540
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$9(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    .line 542
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    iget-boolean v2, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDeleteFlag:Z

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 545
    .local v1, "view":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 547
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 548
    .local v0, "text":Landroid/widget/TextView;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mCurImgPath:Ljava/lang/String;

    .line 550
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mDeleteFlag:Z

    .line 553
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/widget/ImageView;
    :cond_0
    iget-object v2, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$12$1;->this$1:Lorg/g_oku/intruderdetection/MyGalleryActivity$12;

    invoke-static {v2}, Lorg/g_oku/intruderdetection/MyGalleryActivity$12;->access$0(Lorg/g_oku/intruderdetection/MyGalleryActivity$12;)Lorg/g_oku/intruderdetection/MyGalleryActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 554
    return-void
.end method
