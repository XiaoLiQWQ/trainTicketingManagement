import request from '@/utils/request'

// 查询实验室信息列表
export function listPlace(query) {
  return request({
    url: '/system/place/list',
    method: 'get',
    params: query
  })
}

// 查询实验室信息详细
export function getPlace(id) {
  return request({
    url: '/system/place/' + id,
    method: 'get'
  })
}

// 新增实验室信息
export function addPlace(data) {
  return request({
    url: '/system/place',
    method: 'post',
    data: data
  })
}

// 修改实验室信息
export function updatePlace(data) {
  return request({
    url: '/system/place',
    method: 'put',
    data: data
  })
}

// 删除实验室信息
export function delPlace(id) {
  return request({
    url: '/system/place/' + id,
    method: 'delete'
  })
}
