// Generated by gencpp from file robot_msgs/SetTcpRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_SETTCPREQUEST_H
#define ROBOT_MSGS_MESSAGE_SETTCPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_msgs
{
template <class ContainerAllocator>
struct SetTcpRequest_
{
  typedef SetTcpRequest_<ContainerAllocator> Type;

  SetTcpRequest_()
    : pose()
    , tool_num(0)  {
    }
  SetTcpRequest_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , tool_num(0)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _pose_type;
  _pose_type pose;

   typedef int16_t _tool_num_type;
  _tool_num_type tool_num;





  typedef boost::shared_ptr< ::robot_msgs::SetTcpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_msgs::SetTcpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTcpRequest_

typedef ::robot_msgs::SetTcpRequest_<std::allocator<void> > SetTcpRequest;

typedef boost::shared_ptr< ::robot_msgs::SetTcpRequest > SetTcpRequestPtr;
typedef boost::shared_ptr< ::robot_msgs::SetTcpRequest const> SetTcpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_msgs::SetTcpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'robot_msgs': ['/home/ylliu/catkin_ws/src/robot_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::SetTcpRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::SetTcpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::SetTcpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64d9a8fcd4a1fe5623c2ecb2890f780e";
  }

  static const char* value(const ::robot_msgs::SetTcpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64d9a8fcd4a1fe56ULL;
  static const uint64_t static_value2 = 0x23c2ecb2890f780eULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_msgs/SetTcpRequest";
  }

  static const char* value(const ::robot_msgs::SetTcpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] pose\n\
int16 tool_num\n\
";
  }

  static const char* value(const ::robot_msgs::SetTcpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.tool_num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTcpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_msgs::SetTcpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_msgs::SetTcpRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose[]" << std::endl;
    for (size_t i = 0; i < v.pose.size(); ++i)
    {
      s << indent << "  pose[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pose[i]);
    }
    s << indent << "tool_num: ";
    Printer<int16_t>::stream(s, indent + "  ", v.tool_num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_SETTCPREQUEST_H