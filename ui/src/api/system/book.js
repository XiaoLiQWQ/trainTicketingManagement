import request from '@/utils/request'

// 查询场地预订信息列表
export function listBook(query) {
  return request({
    url: '/system/book/list',
    method: 'get',
    params: query
  })
}

// 查询自己场地预订信息列表
export function listMyBook(query) {
  return request({
    url: '/system/book/bookList',
    method: 'get',
    params: query
  })
}

// 查询场地预订信息详细
export function getBook(id) {
  return request({
    url: '/system/book/' + id,
    method: 'get'
  })
}

// 新增场地预订信息
export function addBook(data) {
  return request({
    url: '/system/book',
    method: 'post',
    data: data
  })
}

// 修改场地预订信息
export function updateBook(data) {
  return request({
    url: '/system/book',
    method: 'put',
    data: data
  })
}

// 删除场地预订信息
export function delBook(id) {
  return request({
    url: '/system/book/' + id,
    method: 'delete'
  })
}
