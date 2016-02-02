.class Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationAppEdit.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/notification/NotificationAppEdit$Row;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NotificationAppEdit;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    .line 303
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 304
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 362
    if-eqz p2, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 364
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 367
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method

.method private getSubtitle(Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;)Ljava/lang/String;
    .locals 5
    .param p1, "row"    # Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    .prologue
    .line 436
    iget-boolean v2, p1, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->banned:Z

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$300(Lcom/android/settings_ex/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090ace

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_0
    :goto_0
    return-object v0

    .line 439
    :cond_1
    iget-boolean v2, p1, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->priority:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->sensitive:Z

    if-nez v2, :cond_2

    .line 440
    const-string v0, ""

    goto :goto_0

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$300(Lcom/android/settings_ex/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090acf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "priString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$300(Lcom/android/settings_ex/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090ad0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "senString":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->priority:Z

    iget-boolean v3, p1, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->sensitive:Z

    if-eq v2, v3, :cond_3

    .line 445
    iget-boolean v2, p1, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->priority:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 447
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$300(Lcom/android/settings_ex/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090adc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NotificationAppEdit$Row;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    .param p3, "animate"    # Z

    .prologue
    const/16 v5, 0x8

    .line 372
    instance-of v4, p2, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    if-nez v4, :cond_0

    .line 374
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 375
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;->section:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .end local v2    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 379
    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    .line 380
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;

    .line 381
    .local v3, "vh":Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 382
    iget-object v6, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v4, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->first:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 395
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->getSubtitle(Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "sub":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->StatusbarCK:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$1;-><init>(Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 417
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->LockscreenCk:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$2;

    invoke-direct {v6, p0, v0}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$2;-><init>(Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 428
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->StatusbarCK:Landroid/widget/CheckBox;

    iget-boolean v5, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->isStatusbarCK:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 431
    iget-object v4, v3, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->LockscreenCk:Landroid/widget/CheckBox;

    iget-boolean v5, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->islockscreenCk:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 382
    .end local v1    # "sub":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 313
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;

    .line 324
    .local v0, "r":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    instance-of v1, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "sectionIndex"    # I

    .prologue
    .line 457
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mSections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$600(Lcom/android/settings_ex/notification/NotificationAppEdit;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    .local v3, "section":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->getCount()I

    move-result v1

    .line 459
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;

    .line 461
    .local v2, "r":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;->section:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    .end local v0    # "i":I
    .end local v2    # "r":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    :goto_1
    return v0

    .line 459
    .restart local v0    # "i":I
    .restart local v2    # "r":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v2    # "r":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;

    .line 471
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$600(Lcom/android/settings_ex/notification/NotificationAppEdit;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$600(Lcom/android/settings_ex/notification/NotificationAppEdit;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$600(Lcom/android/settings_ex/notification/NotificationAppEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppEdit$Row;

    .line 330
    .local v0, "r":Lcom/android/settings_ex/notification/NotificationAppEdit$Row;
    if-nez p2, :cond_0

    .line 331
    invoke-virtual {p0, p3, v0}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings_ex/notification/NotificationAppEdit$Row;)Landroid/view/View;

    move-result-object v1

    .line 335
    .local v1, "v":Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NotificationAppEdit$Row;Z)V

    .line 336
    return-object v1

    .line 333
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings_ex/notification/NotificationAppEdit$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings_ex/notification/NotificationAppEdit$Row;

    .prologue
    const/4 v4, 0x0

    .line 340
    instance-of v2, p2, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$400(Lcom/android/settings_ex/notification/NotificationAppEdit;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04011c

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppEdit;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$400(Lcom/android/settings_ex/notification/NotificationAppEdit;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04008b

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;-><init>(Lcom/android/settings_ex/notification/NotificationAppEdit$1;)V

    .local v1, "vh":Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;
    move-object v2, v0

    .line 345
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 346
    iget-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 347
    iget-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 348
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 349
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->title:Landroid/widget/TextView;

    .line 350
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 351
    const v2, 0x7f0f0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->rowDivider:Landroid/view/View;

    .line 354
    const v2, 0x7f0f013f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->StatusbarCK:Landroid/widget/CheckBox;

    .line 356
    const v2, 0x7f0f0140

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;->LockscreenCk:Landroid/widget/CheckBox;

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
