import request from '@/utils/request'

// 查询建议列表
export function listSuggestion(query) {
  return request({
    url: '/system/suggestion/list',
    method: 'get',
    params: query
  })
}

// 查询建议详细
export function getSuggestion(id) {
  return request({
    url: '/system/suggestion/' + id,
    method: 'get'
  })
}

// 新增建议
export function addSuggestion(data) {
  return request({
    url: '/system/suggestion',
    method: 'post',
    data: data
  })
}

// 修改建议
export function updateSuggestion(data) {
  return request({
    url: '/system/suggestion',
    method: 'put',
    data: data
  })
}

// 删除建议
export function delSuggestion(id) {
  return request({
    url: '/system/suggestion/' + id,
    method: 'delete'
  })
}
