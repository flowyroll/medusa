.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdx
lea addresses_WT_ht+0x1b7c0, %r12
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x4f20, %r15
nop
inc %r8
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
add $40030, %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x10e00, %r10
nop
xor $51205, %r11
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub %r10, %r10

// REPMOV
lea addresses_normal+0x1c880, %rsi
lea addresses_WC+0xbac0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub $9971, %r11
mov $73, %rcx
rep movsl
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x18bc0, %r10
clflush (%r10)
nop
nop
nop
sub $52098, %rsi
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'34': 290, '00': 198}
34 34 00 34 00 00 00 00 00 34 34 00 34 34 34 34 34 34 00 34 34 00 00 00 00 00 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 00 00 34 00 00 34 34 34 00 00 00 00 00 00 34 00 34 34 34 34 34 34 34 34 34 00 34 34 00 34 00 00 34 34 00 00 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 00 00 34 00 34 00 00 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 00 00 00 00 00 00 00 34 00 00 00 00 34 34 34 00 00 34 34 34 34 00 00 00 00 00 00 34 00 34 00 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 00 34 00 00 00 00 00 00 34 34 34 34 34 00 00 00 00 34 00 00 00 00 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 00 34 34 00 34 34 34 34 34 34 34 34 34 00 34 00 34 00 00 00 34 00 34 34 34 00 34 00 00 00 00 34 00 00 34 00 34 00 34 34 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 00 00 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 00 34 34 00 34 34 00 00 00 34 00 34 00 00 00 34 00 34 00 00 00 00 00 00 00 34 00 34 34 34 00 00 00 00 00 00 00 00 34 00 00 00 00 34 34 00 34 00 34 00 00 00 00 00 00 00 34 00 00 00 34 00 34 00 00 00 34 00 00 34 00 00 00 00 00 00 00 00 34 00 00 34 34 34 00 34 34 34 00 34 34 00 34 00 34 00 00 00 00 00 00 00 00 00 34 00 00 34 34 00 34 34 34 00 00 34 34 34 34 00 00 34 34 34 00 34 00 00 00 34 34
*/
