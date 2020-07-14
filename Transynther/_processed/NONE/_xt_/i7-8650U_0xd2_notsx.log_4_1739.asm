.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1843d, %rsi
lea addresses_normal_ht+0xfed8, %rdi
sub %r13, %r13
mov $90, %rcx
rep movsw
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x209d, %r10
nop
nop
nop
nop
nop
sub $11524, %rbp
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rdi
nop
xor %rsi, %rsi
lea addresses_D_ht+0x16c3d, %rsi
nop
sub $52328, %r13
movb (%rsi), %r8b
cmp %rcx, %rcx
lea addresses_WC_ht+0x8e3d, %rsi
nop
nop
cmp %r10, %r10
movw $0x6162, (%rsi)
nop
inc %r10
lea addresses_normal_ht+0x144dd, %rcx
nop
nop
add $5159, %rdi
movb $0x61, (%rcx)
nop
add $41139, %r10
lea addresses_A_ht+0x18b3d, %rsi
lea addresses_normal_ht+0x1cc3d, %rdi
nop
nop
nop
dec %r10
mov $100, %rcx
rep movsb
nop
cmp $1871, %rcx
lea addresses_normal_ht+0xc0e8, %r10
nop
nop
nop
nop
nop
and $30631, %rcx
mov (%r10), %bp
nop
nop
nop
sub $6756, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x15c3d, %r9
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r9)
nop
cmp %r9, %r9

// REPMOV
lea addresses_WC+0x419d, %rsi
lea addresses_normal+0xe21d, %rdi
nop
nop
add $17802, %rbx
mov $20, %rcx
rep movsq
nop
cmp %rsi, %rsi

// Store
lea addresses_WT+0x110fd, %rbx
nop
nop
nop
and $57808, %rax
movl $0x51525354, (%rbx)
xor $23297, %rsi

// Store
lea addresses_WT+0xa3ed, %r9
nop
nop
cmp $45086, %rdi
movl $0x51525354, (%r9)

// Exception!!!
mov (0), %rcx
and $40567, %rax

// Store
lea addresses_D+0x41bd, %rbx
nop
add $48079, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbx)

// Exception!!!
mov (0), %rax
nop
nop
nop
nop
sub $39958, %r9

// Faulty Load
lea addresses_A+0x15c3d, %r10
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'35': 4}
35 35 35 35
*/
