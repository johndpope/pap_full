// Copyright (c) 1997  ETH Zurich (Switzerland).
// All rights reserved.
//
// This file is part of CGAL (www.cgal.org); you may redistribute it under
// the terms of the Q Public License version 1.0.
// See the file LICENSE.QPL distributed with CGAL.
//
// Licensees holding a valid commercial license may use this file in
// accordance with the commercial license agreement provided with the software.
//
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// $URL: svn+ssh://scm.gforge.inria.fr/svn/cgal/branches/CGAL-3.2-branch/SearchStructures/include/CGAL/Tree_base.h $
// $Id: Tree_base.h 28567 2006-02-16 14:30:13Z lsaboret $
// 
//
// Author(s)     : Gabriele Neyer

#ifndef __CGAL_Tree_base_d__
#define __CGAL_Tree_base_d__

#include <iterator>
#include <iostream>
#include <functional>
#include <list>
#include <vector>
#include <CGAL/assertions.h>
#include <CGAL/Tree_assertions.h>

#ifndef  USE_ARGUMENT
#define  USE_ARGUMENT( X )  (void)(X);
#endif  
#ifndef  USE_VARIABLE
#define  USE_VARIABLE( X )  (void)(&(X));
#endif  

#ifndef TREE_BASE_NULL
#define TREE_BASE_NULL 0
#endif

#ifndef CGAL__static_cast
#define CGAL__static_cast(TYPE,EXPR) (TYPE)(EXPR)
#endif

#ifndef CGAL__const_cast
#define CGAL__const_cast(TYPE,EXPR) (TYPE)(EXPR)
#endif

#ifndef CGAL__reinterpret_cast
#define CGAL__reinterpret_cast(TYPE,EXPR) (TYPE)(EXPR)
#endif


#define stlvector

CGAL_BEGIN_NAMESPACE



//link type definition of an ordinary vertex of the tree
struct Tree_node_base {
  void *parent_link;
  void *left_link;
  void *right_link;
  Tree_node_base()
    :parent_link(0), left_link(0), right_link(0)
  {}
  Tree_node_base(void* ll, void* rl)
    :parent_link(0), left_link(ll), right_link(rl)
  {}
};


// -------------------------------------------------------------------
// pure virtual abstract base class.
// Designed according to the Prototype Design Pattern 
// A tree class has to be derived from this class.

template <class C_Data, class C_Window>
class Tree_base
{

protected:
  Tree_base(Tree_base const &); // prevent access
  void operator= (Tree_base const &); // prevent access

public:
  typedef double vit;
  typedef int lit;
  typedef int lbit;
  typedef double vbit;
  typedef char oit;
  //  typedef std::vector<C_Data>::iterator vit;
  //typedef std::list<C_Data>::iterator lit;
  //typedef std::back_insert_iterator<lit>  lbit;
  //typedef std::back_insert_iterator<vit>  vbit;
  typedef Tree_base<C_Data, C_Window> Tree_base_type;
  Tree_base() {}
  virtual ~Tree_base() {}

  // 'clone()' returns an object which can be used as argument to 'delete'
  virtual Tree_base<C_Data, C_Window>  *clone() const = 0;
  //virtual Tree_base_type   *clone() const = 0;

  // 'make_tree()' returns an object which can be used as argument to 'delete'
  virtual bool make_tree(const typename std::list<C_Data>::iterator& beg, 
			 const typename std::list<C_Data>::iterator& end,
			 lit *dummy=0) =0;
#ifdef stlvector
  virtual bool make_tree(const typename std::vector<C_Data>::iterator& beg, 
			 const typename std::vector<C_Data>::iterator& end,
			 vit *dummy=0) =0;
#endif
#ifdef carray
  virtual bool make_tree(const C_Data *beg, 
                         const C_Data *end) =0;
#endif
  virtual std::back_insert_iterator< std::list<C_Data> > 
    window_query(C_Window const &win,  std::back_insert_iterator<
		 std::list<C_Data> > out,lbit *dummy=0 ) = 0; 
  virtual std::back_insert_iterator< std::vector<C_Data> >
    window_query(C_Window const &win,  std::back_insert_iterator<
		  std::vector<C_Data> > out,vbit *dummy=0) = 0; 
#ifdef carray
  virtual C_Data * window_query( C_Window const &win, 
			        C_Data * out) = 0; 
#endif
#ifdef ostreamiterator
  typedef std::ostream_iterator< C_Data> oit;
  virtual  std::ostream_iterator< C_Data> window_query( C_Window const &win, 
				     std::ostream_iterator< C_Data> out,
					oit *dummy=0	       ) = 0; 
#endif
  virtual  std::back_insert_iterator< std::list< C_Data> > 
    enclosing_query( C_Window const &win,  std::back_insert_iterator<
		     std::list< C_Data> > out, lbit *dummy=0 ) = 0; 
  virtual  std::back_insert_iterator< std::vector< C_Data> > 
    enclosing_query( C_Window const &win,  std::back_insert_iterator<
		     std::vector< C_Data> > out,vbit *dummy=0 ) = 0; 
#ifdef carray
  virtual   C_Data * enclosing_query( C_Window const &win, 
				    C_Data *out) = 0; 
#endif
#ifdef ostreamiterator
  virtual  std::ostream_iterator< C_Data> enclosing_query( C_Window const &win, 
				           std::ostream_iterator< C_Data> out,
					   oit *dummy=0) = 0; 
#endif
  virtual bool is_inside( C_Window const &win,
			  C_Data const& object) const =0;  
  virtual bool is_anchor()const =0;
  virtual bool is_valid()const =0;
};


// -------------------------------------------------------------------
// Tree Anchor: this class is used as a recursion anchor.
// The derived tree classes can be nested. Use this class as the
// most inner class. This class is doing nothin exept stopping the recursion

template <class C_Data, class C_Window>
class Tree_anchor: public Tree_base< C_Data,  C_Window>
{
public:
  // Construct a factory with the given factory as sublayer
  Tree_anchor() {}
  virtual ~Tree_anchor(){}
  Tree_base<C_Data, C_Window> *clone() const { return new Tree_anchor(); }
  typedef Tree_base<C_Data, C_Window> tbt;
//  Tree_base_type *clone() const { return new Tree_anchor(); }

  bool make_tree(const typename std::list< C_Data>::iterator& beg, 
		 const typename std::list< C_Data>::iterator& end, 
		 typename tbt::lit * =0) 
  {
    USE_ARGUMENT(beg);
    USE_ARGUMENT(end);
    return true;
  }
#ifdef stlvector
  bool make_tree(const typename std::vector< C_Data>::iterator& beg, 
		 const typename std::vector< C_Data>::iterator& end, 
		 typename tbt::vit * =0) 
  {
    USE_ARGUMENT(beg);
    USE_ARGUMENT(end);
    return true;
  }
#endif
#ifdef carray
  bool make_tree(const  C_Data *beg, 
                 const  C_Data *end) 
  {
    USE_ARGUMENT(beg);
    USE_ARGUMENT(end);
    return true;
  }
#endif
   std::back_insert_iterator< std::list< C_Data> > 
      window_query( 
       C_Window const &win, 
       std::back_insert_iterator< std::list< C_Data> > out,
       typename tbt::lbit * =0){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
   
  std::back_insert_iterator< std::vector< C_Data> >  
      window_query( C_Window const &win, 
		    std::back_insert_iterator< std::vector< C_Data> > out, 
                    typename tbt::vbit * =0){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
#ifdef carray
   C_Data * window_query( C_Window const &win, 
                     C_Data * out){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
#endif
#ifdef ostreamiterator
   std::ostream_iterator< C_Data> window_query( C_Window const &win, 
				        std::ostream_iterator< C_Data> out, 
					typename tbt::oit *dummy=0){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
#endif
   std::back_insert_iterator< std::list< C_Data> > enclosing_query( C_Window const &win, 
                                   std::back_insert_iterator< std::list< C_Data> > out,
				   typename tbt::lbit * =0){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
   std::back_insert_iterator< std::vector< C_Data> > enclosing_query( C_Window const &win, 
                                   std::back_insert_iterator< std::vector< C_Data> > out,
				   typename tbt::vbit * =0){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out); 
    return out;
  }
#ifdef carray
   C_Data * enclosing_query( C_Window const &win, 
                        C_Data * out){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
#endif
#ifdef ostreamiterator
   std::ostream_iterator< C_Data> enclosing_query( C_Window const &win, 
					   std::ostream_iterator< C_Data> out,
                                           typename tbt::oit *dummy=0){
    USE_ARGUMENT(win);
    USE_ARGUMENT(out);
    return out;
  }
#endif
  bool is_valid()const{ return true;}

protected:

  bool is_inside( C_Window const &win, 
		  C_Data const& object) const
  {     
    USE_ARGUMENT(win);
    USE_ARGUMENT(object);
    return true;
  }
  bool is_anchor()const {return true;}
};

CGAL_END_NAMESPACE

#endif