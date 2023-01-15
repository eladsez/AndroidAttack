.class public Lcom/picvision/seaweedweather/SpActivity;
.super Landroid/app/Activity;
.source "SpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/SpActivity$MyReceiver;
    }
.end annotation


# instance fields
.field private final UPDATE_ADAPTER:I

.field adapter:Lcom/picvision/seaweedweather/views/RecommendAdapter;

.field context:Landroid/content/Context;

.field private mReceiver:Lcom/picvision/seaweedweather/SpActivity$MyReceiver;

.field mg:Lcom/picvision/seaweedweather/views/MyGallery;

.field position:I

.field spList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/picvision/seaweedweather/model/Sp;",
            ">;"
        }
    .end annotation
.end field

.field spnameGallery:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/picvision/seaweedweather/SpActivity;->spList:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/picvision/seaweedweather/SpActivity;->position:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/picvision/seaweedweather/SpActivity;->UPDATE_ADAPTER:I

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/picvision/seaweedweather/SpActivity;->mg:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v0, p1}, Lcom/picvision/seaweedweather/views/MyGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iput-object p0, p0, Lcom/picvision/seaweedweather/SpActivity;->context:Landroid/content/Context;

    .line 44
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/SpActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/SpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "spList"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spList:Ljava/util/ArrayList;

    .line 58
    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/picvision/seaweedweather/SpActivity;->position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/picvision/seaweedweather/model/Sp;

    invoke-virtual {v5}, Lcom/picvision/seaweedweather/model/Sp;->getRecommendList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 62
    .local v0, "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/picvision/seaweedweather/model/Recommend;>;"
    const v5, 0x7f090009

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 63
    .local v2, "img":Landroid/widget/ImageView;
    const v5, 0x7f09000b

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/picvision/seaweedweather/views/MyGallery;

    iput-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->mg:Lcom/picvision/seaweedweather/views/MyGallery;

    .line 64
    const v5, 0x7f09000a

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Gallery;

    iput-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spnameGallery:Landroid/widget/Gallery;

    .line 65
    new-instance v5, Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-direct {v5, p0, v0}, Lcom/picvision/seaweedweather/views/RecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->adapter:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    .line 66
    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->mg:Lcom/picvision/seaweedweather/views/MyGallery;

    iget-object v6, p0, Lcom/picvision/seaweedweather/SpActivity;->adapter:Lcom/picvision/seaweedweather/views/RecommendAdapter;

    invoke-virtual {v5, v6}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    new-instance v4, Lcom/picvision/seaweedweather/views/SpNameAdapter;

    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/picvision/seaweedweather/views/SpNameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 100
    .local v4, "spAdaper":Lcom/picvision/seaweedweather/views/SpNameAdapter;
    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spnameGallery:Landroid/widget/Gallery;

    invoke-virtual {v5, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spnameGallery:Landroid/widget/Gallery;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setSelection(I)V

    .line 102
    iget-object v5, p0, Lcom/picvision/seaweedweather/SpActivity;->spnameGallery:Landroid/widget/Gallery;

    new-instance v6, Lcom/picvision/seaweedweather/SpActivity$1;

    invoke-direct {v6, p0}, Lcom/picvision/seaweedweather/SpActivity$1;-><init>(Lcom/picvision/seaweedweather/SpActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    const v5, 0x7f09000c

    invoke-virtual {p0, v5}, Lcom/picvision/seaweedweather/SpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 129
    .local v1, "ibtn":Landroid/widget/ImageButton;
    new-instance v5, Lcom/picvision/seaweedweather/SpActivity$2;

    invoke-direct {v5, p0}, Lcom/picvision/seaweedweather/SpActivity$2;-><init>(Lcom/picvision/seaweedweather/SpActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/picvision/seaweedweather/SpActivity;->mReceiver:Lcom/picvision/seaweedweather/SpActivity$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/SpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    new-instance v1, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;

    invoke-direct {v1, p0}, Lcom/picvision/seaweedweather/SpActivity$MyReceiver;-><init>(Lcom/picvision/seaweedweather/SpActivity;)V

    iput-object v1, p0, Lcom/picvision/seaweedweather/SpActivity;->mReceiver:Lcom/picvision/seaweedweather/SpActivity$MyReceiver;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "updateSpPics"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "mFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/picvision/seaweedweather/SpActivity;->mReceiver:Lcom/picvision/seaweedweather/SpActivity$MyReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/picvision/seaweedweather/SpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    return-void
.end method
