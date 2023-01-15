.class Lorg/g_oku/intruderdetection/MyGalleryActivity$7;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;->setDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v10, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    const v11, 0x7f0c0003

    invoke-virtual {v10, v11}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 217
    .local v9, "view":Landroid/widget/ImageView;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v10, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v10}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$6(Lorg/g_oku/intruderdetection/MyGalleryActivity;)Landroid/widget/GridView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/g_oku/intruderdetection/ImageAdapter;

    .line 220
    .local v0, "adapter":Lorg/g_oku/intruderdetection/ImageAdapter;
    invoke-virtual {v0, p3}, Lorg/g_oku/intruderdetection/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/g_oku/intruderdetection/ImageItem;

    .line 223
    .local v7, "item":Lorg/g_oku/intruderdetection/ImageItem;
    iget-object v10, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    iget-object v11, v7, Lorg/g_oku/intruderdetection/ImageItem;->path:Ljava/lang/String;

    iput-object v11, v10, Lorg/g_oku/intruderdetection/MyGalleryActivity;->mCurImgPath:Ljava/lang/String;

    .line 226
    const/4 v5, 0x0

    .line 227
    .local v5, "fileInput":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 229
    .local v2, "bufInput":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v10, v7, Lorg/g_oku/intruderdetection/ImageItem;->path:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "fileInput":Ljava/io/FileInputStream;
    .local v6, "fileInput":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 233
    .end local v6    # "fileInput":Ljava/io/FileInputStream;
    .restart local v5    # "fileInput":Ljava/io/FileInputStream;
    :goto_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .end local v2    # "bufInput":Ljava/io/BufferedInputStream;
    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    .restart local v2    # "bufInput":Ljava/io/BufferedInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v10, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    iget-object v11, v7, Lorg/g_oku/intruderdetection/ImageItem;->path:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$7(Lorg/g_oku/intruderdetection/MyGalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "date":Ljava/lang/String;
    iget-object v10, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$7;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    const v11, 0x7f0c0004

    invoke-virtual {v10, v11}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 241
    .local v8, "text":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_1
    return-void

    .line 230
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "date":Ljava/lang/String;
    .end local v8    # "text":Landroid/widget/TextView;
    :catch_0
    move-exception v4

    .line 231
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v8    # "text":Landroid/widget/TextView;
    :cond_0
    const-string v10, ""

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
