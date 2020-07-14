.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx
push %rsi
lea addresses_normal_ht+0x12b19, %rdx
nop
nop
nop
nop
xor $41577, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
and %rax, %rax
lea addresses_A_ht+0xf719, %rcx
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rcx
movaps %xmm2, (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x3f19, %rbx
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rbx), %ax
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x9719, %rax
nop
nop
nop
nop
nop
xor $26816, %r14
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1e999, %r14
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r14), %esi
nop
nop
nop
inc %r9
lea addresses_UC_ht+0xb31d, %r14
nop
inc %rbx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
dec %rbx
lea addresses_WC_ht+0x13b19, %rbx
nop
nop
nop
nop
nop
xor $61687, %rax
mov (%rbx), %r14d
nop
nop
nop
xor $51943, %rax
lea addresses_WC_ht+0x11399, %rdx
nop
nop
xor %rax, %rax
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0xb245, %rdx
cmp $25183, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x5b1, %r14
nop
nop
and $46878, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
sub $10080, %rdx
lea addresses_normal_ht+0x3421, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
movb $0x61, (%rcx)
sub $26608, %rax
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x11559, %r14
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%r14)
nop
inc %r15

// Store
lea addresses_A+0x13cad, %rbx
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rbx)
nop
nop
inc %rsi

// Store
lea addresses_UC+0xc399, %rax
nop
nop
nop
nop
xor $56430, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovaps %ymm6, (%rax)
nop
nop
nop
nop
inc %rdi

// Store
mov $0x7db, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r15)
nop
sub %r14, %r14

// Faulty Load
lea addresses_RW+0x4719, %r14
nop
nop
nop
nop
dec %rsi
mov (%r14), %bx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
