const baseUrl = 'http://10.0.2.2:8000/';

const getUserToken = '${baseUrl}token/';

const createUserEndPoint = '${baseUrl}api/user/create/';

const createPostEndPoint = '${baseUrl}api/art/create_art/';

const getAllArtList = '${baseUrl}api/art/search/custom\?search=';

const retrieveArtPostEndpoint = '${baseUrl}api/art/retrieve_art_post/';

const retrieveArtList = '${baseUrl}api/art/get_all_art_post_user/';

const retrieveUserList = '${baseUrl}api/user/list_all_user/';

const retrieveBookmarkList = '${baseUrl}api/art/bookmark/get';

// Endpoint to like art
const likePostEndpoint = '${baseUrl}api/art/likes/';

const bookmarkPostEndpoint = '${baseUrl}api/bookmark/';

const getCurrentUserEndPoint = '${baseUrl}api/user/current_user/';

const getFilterArtEndPoint = '${baseUrl}api/art/genre/';

const getBookmarkEndPoint = '${baseUrl}api/art/bookmark/get';

const getCommentEndPoint = '${baseUrl}api/get/comments/';

const postCommentEndPoint = '${baseUrl}api/comment/';

const getSellArtEndPoint = '${baseUrl}api/art/sell/';

const getBuyArtEndpPoint = '${baseUrl}api/art/buy/';

const searchUserEndPoint = '${baseUrl}api/user/search/';

const followUserEndPoint = '${baseUrl}api/follow_user/follow/';

const getFollowingUserEndPoint = '${baseUrl}api/follow_user/following/';

const getFollowerUserEndPoint = '${baseUrl}api/follow_user/follower/';

const getOtherFollowerUserEndPoint =
    '${baseUrl}api/follow_user/details_follower/';

const getOtherFollowingUserEndPoint =
    '${baseUrl}api/follow_user/details_following/';

const getOtherArtPostEndPoint = '${baseUrl}api/art/other_art/';

const createPaymentEndPoint = '${baseUrl}api/pay/payment/';

const getPaymentEndPoint = '${baseUrl}api/pay/get_payment/';
