.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x12c6, %rbx
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%rbx)
nop
cmp %r9, %r9
lea addresses_WT_ht+0xa9b0, %r15
nop
nop
nop
dec %r14
mov (%r15), %edx
nop
nop
cmp $44307, %r15
lea addresses_A_ht+0x1f86, %rbx
nop
nop
nop
nop
nop
and $1493, %r9
movb (%rbx), %cl
add $23599, %rcx
lea addresses_UC_ht+0x1186, %rsi
lea addresses_normal_ht+0x178c0, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $39917, %r13
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
and $53414, %r14
lea addresses_normal_ht+0x6ace, %rsi
lea addresses_WT_ht+0xba16, %rdi
nop
nop
nop
sub $11583, %r13
mov $6, %rcx
rep movsq
nop
nop
nop
xor $60086, %rsi
lea addresses_WT_ht+0x19292, %r14
nop
cmp %rbx, %rbx
movb (%r14), %r15b
nop
nop
nop
nop
nop
add $49166, %rcx
lea addresses_normal_ht+0x8c4a, %r14
nop
nop
xor $36051, %rcx
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
xor $5802, %r14
lea addresses_normal_ht+0x1a986, %rcx
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %rcx
movntdq %xmm1, (%rcx)
nop
cmp $56650, %r9
lea addresses_UC_ht+0x9f86, %rsi
lea addresses_D_ht+0xe846, %rdi
clflush (%rdi)
nop
nop
nop
xor $38050, %rbx
mov $68, %rcx
rep movsl
dec %r14
lea addresses_UC_ht+0x7186, %rsi
sub %r9, %r9
mov (%rsi), %bx
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x9be, %rcx
nop
sub $48635, %rdx
mov (%rcx), %rbx
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x1a586, %r15
cmp %r13, %r13
mov (%r15), %r9w
nop
nop
nop
nop
nop
cmp $36520, %rdi
lea addresses_UC_ht+0x4686, %r13
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %r13
vmovaps %ymm4, (%r13)
nop
and $53292, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rsi

// Store
lea addresses_WC+0x13506, %rax
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
sub $30807, %r15

// Faulty Load
lea addresses_RW+0x15586, %r14
nop
nop
sub %r11, %r11
mov (%r14), %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': True}}
{'32': 6}
32 32 32 32 32 32
*/
