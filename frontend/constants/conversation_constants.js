var ConversationConstants = {
  receiveAll : "001_GET_ALL_OF_THE_CONVERSATIONS_FOR_THE_CURRENT_USER_AND_PUT_IN_THE_STORE",
  updateOne: "002_GET_A_CONVERSATION_THAT_HAS_BEEN_SOMEHOW_CHANGED_AND_PUT_IT_IN_THE_STORE_OVERWRITING_THE_ONE_THATS_THERE",
  updateMany: "008-GET_A_BUNCH_OF_CONVERSATIONS_THAT_HAVE_ALL_BEEN_CHANGED_AND_PUT_THEM_INTO_THE_STORE_EITHER_ADDING_THEM_IF_NEW_OR_UPDATING_THEM_IF_THEYRE_ALREADY_THERE",
  toggleSelected: "005-MAKE_ALL_THE_CONVERSATIONS_SELECTED_IF_THEY_WERENT_OR_DESELECTED_IF_THEY_WERE",
    selectThese: "006-PROVIDE_SOME_CRIETERION_AND_NICELY_ASK_THE_APP_TO_SELECT_THOSE_CONVERSATIONS_THAT_FIT_THE_CRITERION",
    clearStore: "012-CLEAR_ALL_OF_THE_CONVERSATIONS_OUT_OF_THE_STORE_PROBABLY_BECAUSE_OF_LOGOUT_OR_SOMETHING",
};

module.exports = ConversationConstants;
