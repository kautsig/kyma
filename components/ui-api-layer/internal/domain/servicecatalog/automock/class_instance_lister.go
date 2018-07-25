// Code generated by mockery v1.0.0
package automock

import mock "github.com/stretchr/testify/mock"

import v1beta1 "github.com/kubernetes-incubator/service-catalog/pkg/apis/servicecatalog/v1beta1"

// classInstanceLister is an autogenerated mock type for the classInstanceLister type
type classInstanceLister struct {
	mock.Mock
}

// ListForClass provides a mock function with given fields: className, externalClassName
func (_m *classInstanceLister) ListForClass(className string, externalClassName string) ([]*v1beta1.ServiceInstance, error) {
	ret := _m.Called(className, externalClassName)

	var r0 []*v1beta1.ServiceInstance
	if rf, ok := ret.Get(0).(func(string, string) []*v1beta1.ServiceInstance); ok {
		r0 = rf(className, externalClassName)
	} else {
		if ret.Get(0) != nil {
			r0 = ret.Get(0).([]*v1beta1.ServiceInstance)
		}
	}

	var r1 error
	if rf, ok := ret.Get(1).(func(string, string) error); ok {
		r1 = rf(className, externalClassName)
	} else {
		r1 = ret.Error(1)
	}

	return r0, r1
}