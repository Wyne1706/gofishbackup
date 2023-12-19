.class Lcom/android/amomin1gofish/GameActivity$8$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/amomin1gofish/GameActivity$8;

.field final synthetic val$completeJson:Ljava/lang/String;

.field final synthetic val$gson:Lcom/google/gson/Gson;

.field final synthetic val$partMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity$8;Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/amomin1gofish/GameActivity$8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->val$gson:Lcom/google/gson/Gson;

    iput-object p3, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->val$completeJson:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->val$partMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 451
    const-string v0, ""

    const-string v1, "GOFISHGAME"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_9
    new-instance v7, Lcom/android/amomin1gofish/GameActivity$8$1$1;

    invoke-direct {v7, p0}, Lcom/android/amomin1gofish/GameActivity$8$1$1;-><init>(Lcom/android/amomin1gofish/GameActivity$8$1;)V

    .line 452
    invoke-virtual {v7}, Lcom/android/amomin1gofish/GameActivity$8$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 453
    .local v7, "listType":Ljava/lang/reflect/Type;
    iget-object v8, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v8, v8, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->val$gson:Lcom/google/gson/Gson;

    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->val$completeJson:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, v8, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    .line 456
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_41
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2a2

    .line 458
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v9}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_82

    .line 459
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v10}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_82
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v9}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_29e

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v9}, Lcom/android/amomin1gofish/Models/UserModel;->getBluetoothModelArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v9}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29e

    .line 465
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->settingsLayout:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v11, Lcom/android/amomin1gofish/R$id;->gameLayout:I

    invoke-virtual {v9, v11}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v11, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/amomin1gofish/Models/UserModel;

    iput-object v11, v9, Lcom/android/amomin1gofish/GameActivity;->currentUserCardDataArrayList:Lcom/android/amomin1gofish/Models/UserModel;

    .line 469
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v11, Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    iget-object v12, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v13, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v13, v13, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v13, v13, Lcom/android/amomin1gofish/GameActivity;->blueDataArrayList:Ljava/util/ArrayList;

    .line 471
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v13}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v11, v9, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    .line 472
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v9}, Lcom/android/amomin1gofish/GameActivity;->access$800(Lcom/android/amomin1gofish/GameActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v9

    iget-object v11, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 473
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v9}, Lcom/android/amomin1gofish/GameActivity;->access$800(Lcom/android/amomin1gofish/GameActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v9

    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v12, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {v11, v12, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 474
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v11, Lcom/android/amomin1gofish/R$id;->imgDeal:I

    invoke-virtual {v9, v11}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->imgShowPlayer1:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const-string v10, "1"

    iput-object v10, v9, Lcom/android/amomin1gofish/GameActivity;->playingOrder:Ljava/lang/String;

    .line 480
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v4, :cond_199

    .line 481
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout3:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->tvPlayer3:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 484
    .local v9, "tvPlayer3":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v10}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .end local v9    # "tvPlayer3":Landroid/widget/TextView;
    goto/16 :goto_29e

    :cond_199
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v3, :cond_20c

    .line 486
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout2:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout3:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->tvPlayer3:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 490
    .restart local v9    # "tvPlayer3":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v11, Lcom/android/amomin1gofish/R$id;->tvPlayer2:I

    invoke-virtual {v10, v11}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 491
    .local v10, "tvPlayer2":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v11}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v11, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v11}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v9    # "tvPlayer3":Landroid/widget/TextView;
    .end local v10    # "tvPlayer2":Landroid/widget/TextView;
    goto/16 :goto_29d

    .line 493
    :cond_20c
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v2, :cond_29d

    .line 494
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout1:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout2:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->lllayout4:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v10, Lcom/android/amomin1gofish/R$id;->tvPlayer3:I

    invoke-virtual {v9, v10}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 498
    .restart local v9    # "tvPlayer3":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v10, v10, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v11, Lcom/android/amomin1gofish/R$id;->tvPlayer2:I

    invoke-virtual {v10, v11}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 499
    .restart local v10    # "tvPlayer2":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v11, v11, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    sget v12, Lcom/android/amomin1gofish/R$id;->tvPlayer4:I

    invoke-virtual {v11, v12}, Lcom/android/amomin1gofish/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 500
    .local v11, "tvPlayer4":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v12}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v12, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v12}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v12, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity;->allUserBluetoothInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/amomin1gofish/Models/BluetoothModel;

    invoke-virtual {v12}, Lcom/android/amomin1gofish/Models/BluetoothModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_29c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_29c} :catch_2a4

    goto :goto_29e

    .line 493
    .end local v9    # "tvPlayer3":Landroid/widget/TextView;
    .end local v10    # "tvPlayer2":Landroid/widget/TextView;
    .end local v11    # "tvPlayer4":Landroid/widget/TextView;
    :cond_29d
    :goto_29d
    nop

    .line 457
    :cond_29e
    :goto_29e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_41

    .line 575
    .end local v7    # "listType":Ljava/lang/reflect/Type;
    .end local v8    # "i":I
    :cond_2a2
    goto/16 :goto_512

    .line 506
    :catch_2a4
    move-exception v7

    .line 507
    .local v7, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v8, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->val$partMessage:Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, "message":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data type is NOT JSON!***"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v9, "SELECTCARDDIALOG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "&"

    if-eqz v9, :cond_346

    .line 512
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .local v2, "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "DATA COME FOR USERS"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_318

    .line 517
    const-string v6, "D\u0130ALOG SHOW TO USERS"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v6, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v6, v6, Lcom/android/amomin1gofish/GameActivity;->currentUserCardDataArrayList:Lcom/android/amomin1gofish/Models/UserModel;

    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/UserModel;->getCardModelArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 519
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 518
    invoke-virtual {v1, v6, v4, v3, v5}, Lcom/android/amomin1gofish/GameActivity;->answerCardDialog(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_344

    .line 520
    :cond_318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name is not match. Device Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v5, v5, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " *** Gelen Adres: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_344
    goto/16 :goto_512

    :cond_346
    const-string v9, "ANSWERCARDDIALOG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3d0

    .line 523
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 524
    .restart local v0    # "parts":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 525
    .local v1, "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v9, v9, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ce

    .line 526
    new-instance v6, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-direct {v6}, Lcom/android/amomin1gofish/Models/CardModel;-><init>()V

    .line 527
    .local v6, "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/amomin1gofish/Models/CardModel;->setName(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/android/amomin1gofish/Models/CardModel;->setShortName(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/android/amomin1gofish/Models/CardModel;->setImagePath(Ljava/lang/String;)V

    .line 530
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v3, v6}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->itemAdded(Lcom/android/amomin1gofish/Models/CardModel;)V

    .line 531
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "You received the "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 532
    invoke-virtual {v6}, Lcom/android/amomin1gofish/Models/CardModel;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " card from "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Player"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 538
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    :cond_3ce
    goto/16 :goto_512

    .line 539
    :cond_3d0
    const-string v9, "GOFISH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v11, " Cards Left"

    if-eqz v9, :cond_492

    .line 541
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "parts":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 543
    .local v9, "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v12, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v12, v12, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_490

    .line 544
    new-instance v10, Lcom/android/amomin1gofish/Models/CardModel;

    invoke-direct {v10}, Lcom/android/amomin1gofish/Models/CardModel;-><init>()V

    .line 545
    .local v10, "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Lcom/android/amomin1gofish/Models/CardModel;->setName(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Lcom/android/amomin1gofish/Models/CardModel;->setShortName(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/android/amomin1gofish/Models/CardModel;->setImagePath(Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CARDCOUNT&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v4, v4, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/amomin1gofish/GameActivity;->access$900(Lcom/android/amomin1gofish/GameActivity;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity;->player1Adapter:Lcom/android/amomin1gofish/Adapters/Player1Adapter;

    invoke-virtual {v0, v10}, Lcom/android/amomin1gofish/Adapters/Player1Adapter;->itemAdded(Lcom/android/amomin1gofish/Models/CardModel;)V

    .line 552
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    const-string v2, "You drew a card from the deck!"

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 556
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v9    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "cardModel":Lcom/android/amomin1gofish/Models/CardModel;
    :cond_490
    goto/16 :goto_512

    .line 557
    :cond_492
    const-string v0, "CARDCOUNT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4cb

    .line 558
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 559
    .restart local v0    # "parts":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 560
    .restart local v2    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v1, v1, Lcom/android/amomin1gofish/GameActivity;->tvCardCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_512

    .line 565
    :cond_4cb
    const-string v0, "TAKESCORE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_512

    .line 566
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 567
    .restart local v0    # "parts":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 568
    .local v1, "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v3, v3, Lcom/android/amomin1gofish/GameActivity;->myBluetoothName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_512

    .line 569
    iget-object v2, p0, Lcom/android/amomin1gofish/GameActivity$8$1;->this$1:Lcom/android/amomin1gofish/GameActivity$8;

    iget-object v2, v2, Lcom/android/amomin1gofish/GameActivity$8;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scores\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/amomin1gofish/GameActivity;->infoDialog(Ljava/lang/String;)V

    .line 576
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "splitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v8    # "message":Ljava/lang/String;
    :cond_512
    :goto_512
    return-void
.end method
