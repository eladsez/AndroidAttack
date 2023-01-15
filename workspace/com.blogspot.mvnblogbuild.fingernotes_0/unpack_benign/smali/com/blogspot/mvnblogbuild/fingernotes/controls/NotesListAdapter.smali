.class public Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotesListAdapter.java"


# static fields
.field private static final dateTypeFormat:Ljava/text/SimpleDateFormat;

.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentDate:Ljava/util/Date;

.field private notesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 34
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 33
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "notesList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->notesList:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->activity:Landroid/app/Activity;

    .line 45
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->currentDate:Ljava/util/Date;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    move-object v6, p2

    .line 63
    .local v6, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 64
    sget-object v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 66
    :cond_0
    const v7, 0x7f0a0025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "noteItemTitle":Landroid/widget/TextView;
    const v7, 0x7f0a0026

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 67
    check-cast v4, Landroid/widget/TextView;

    .line 69
    .local v4, "noteItemUpdated":Landroid/widget/TextView;
    const v7, 0x7f0a0027

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, "alarmDate":Landroid/widget/TextView;
    const v7, 0x7f0a0024

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, "noteItemIcon":Landroid/widget/ImageView;
    const v7, 0x7f0a0028

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    check-cast v2, Landroid/widget/CheckBox;

    .line 74
    .local v2, "noteItemSelected":Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->notesList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_4

    .line 75
    iget-object v7, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->notesList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    .line 76
    .local v5, "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget-object v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 78
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getUpdatedDate()Ljava/util/Date;

    move-result-object v8

    .line 77
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 82
    iget-object v7, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->currentDate:Ljava/util/Date;

    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    const/16 v7, 0xbb

    const/16 v8, 0x60

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    sget-object v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 85
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmDate()Ljava/util/Date;

    move-result-object v8

    .line 84
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getIsSelected()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 99
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getIsSelected()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 105
    :goto_1
    new-instance v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;

    invoke-direct {v7, p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 116
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    new-instance v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;

    invoke-direct {v7, p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .end local v5    # "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    :goto_2
    return-object v6

    .line 88
    .restart local v5    # "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    :cond_2
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmArmed()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 89
    const/16 v7, 0xe4

    const/16 v8, 0x1b

    const/16 v9, 0x17

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    sget-object v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->dateTypeFormat:Ljava/text/SimpleDateFormat;

    .line 91
    invoke-virtual {v5}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getAlarmDate()Ljava/util/Date;

    move-result-object v8

    .line 90
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_1

    .line 185
    .end local v5    # "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    :cond_4
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 188
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    new-instance v7, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$3;

    invoke-direct {v7, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$3;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
