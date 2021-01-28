// Generated by gencpp from file moving_file/moving_stfRequest.msg
// DO NOT EDIT!


#ifndef MOVING_FILE_MESSAGE_MOVING_STFREQUEST_H
#define MOVING_FILE_MESSAGE_MOVING_STFREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moving_file
{
template <class ContainerAllocator>
struct moving_stfRequest_
{
  typedef moving_stfRequest_<ContainerAllocator> Type;

  moving_stfRequest_()
    : a()
    , b()  {
    }
  moving_stfRequest_(const ContainerAllocator& _alloc)
    : a(_alloc)
    , b(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _a_type;
  _a_type a;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::moving_file::moving_stfRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moving_file::moving_stfRequest_<ContainerAllocator> const> ConstPtr;

}; // struct moving_stfRequest_

typedef ::moving_file::moving_stfRequest_<std::allocator<void> > moving_stfRequest;

typedef boost::shared_ptr< ::moving_file::moving_stfRequest > moving_stfRequestPtr;
typedef boost::shared_ptr< ::moving_file::moving_stfRequest const> moving_stfRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moving_file::moving_stfRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moving_file::moving_stfRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moving_file::moving_stfRequest_<ContainerAllocator1> & lhs, const ::moving_file::moving_stfRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moving_file::moving_stfRequest_<ContainerAllocator1> & lhs, const ::moving_file::moving_stfRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moving_file

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::moving_file::moving_stfRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moving_file::moving_stfRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_file::moving_stfRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_file::moving_stfRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_file::moving_stfRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_file::moving_stfRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moving_file::moving_stfRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "efc98bdd092d58ce0c705b4bd69d178c";
  }

  static const char* value(const ::moving_file::moving_stfRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xefc98bdd092d58ceULL;
  static const uint64_t static_value2 = 0x0c705b4bd69d178cULL;
};

template<class ContainerAllocator>
struct DataType< ::moving_file::moving_stfRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moving_file/moving_stfRequest";
  }

  static const char* value(const ::moving_file::moving_stfRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moving_file::moving_stfRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string a\n"
"string b\n"
;
  }

  static const char* value(const ::moving_file::moving_stfRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moving_file::moving_stfRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moving_stfRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moving_file::moving_stfRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moving_file::moving_stfRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVING_FILE_MESSAGE_MOVING_STFREQUEST_H
