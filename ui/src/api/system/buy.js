import request from '@/utils/request'

// 查询购票列表
export function listBuy(query) {
  return request({
    url: '/system/buy/list',
    method: 'get',
    params: query
  })
}

// 查询购票详细
export function getBuy(id) {
  return request({
    url: '/system/buy/' + id,
    method: 'get'
  })
}

// 新增购票
export function addBuy(data) {
  return request({
    url: '/system/buy',
    method: 'post',
    data: data
  })
}

// 修改购票
export function updateBuy(data) {
  return request({
    url: '/system/buy',
    method: 'put',
    data: data
  })
}

// 删除购票
export function delBuy(id) {
  return request({
    url: '/system/buy/' + id,
    method: 'delete'
  })
}
