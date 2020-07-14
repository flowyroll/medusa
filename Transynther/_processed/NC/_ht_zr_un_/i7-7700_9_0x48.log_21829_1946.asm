.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x9d1d, %rsi
lea addresses_D_ht+0x1da5d, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $52, %rcx
rep movsw
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1b23d, %rdx
and $47810, %r9
movb $0x61, (%rdx)
xor %r15, %r15
lea addresses_UC_ht+0x10905, %r15
nop
nop
nop
nop
and $51354, %rdx
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
add %rbx, %rbx
lea addresses_WC_ht+0xd34b, %rdx
nop
nop
nop
nop
nop
inc %rcx
movb $0x61, (%rdx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xd19d, %r9
nop
nop
nop
nop
inc %rbx
mov (%r9), %rdx
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1439d, %rsi
lea addresses_A_ht+0x259d, %rdi
nop
sub %rbx, %rbx
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1a19d, %rsi
lea addresses_UC_ht+0x1919d, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $105, %rcx
rep movsl
nop
add $12184, %rbx
lea addresses_D_ht+0x11c07, %r9
nop
nop
sub $50140, %rdx
mov (%r9), %ecx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x8fed, %r15
nop
nop
cmp %rdi, %rdi
movb (%r15), %cl
nop
nop
nop
and $55571, %rdx
lea addresses_WC_ht+0x4f9d, %rsi
nop
nop
nop
nop
add $48362, %r15
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
add %rcx, %rcx
lea addresses_WT_ht+0x1677, %rsi
lea addresses_normal_ht+0x9d9d, %rdi
nop
nop
nop
inc %r9
mov $13, %rcx
rep movsq
nop
nop
nop
nop
sub $28690, %rcx
lea addresses_WT_ht+0x1799d, %r9
nop
and $22845, %rcx
mov (%r9), %rbx
sub $26414, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx

// Load
lea addresses_normal+0x607d, %r15
nop
cmp %r13, %r13
mov (%r15), %r8
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x1d99d, %r12
nop
nop
xor $61570, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
add $38001, %r15

// Load
lea addresses_WC+0x76e9, %rax
nop
nop
nop
add $56999, %rcx
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r12
xor $60891, %r13

// Store
lea addresses_UC+0xa83d, %r8
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r8)
inc %rcx

// Store
mov $0x1e4217000000099d, %r8
nop
nop
nop
nop
dec %r15
movb $0x51, (%r8)
add %r15, %r15

// Store
mov $0xc7df9000000059d, %rax
nop
nop
and $9300, %r10
movw $0x5152, (%rax)
nop
nop
nop
nop
inc %rax

// Load
lea addresses_RW+0xdfbd, %r10
add $30957, %rcx
mov (%r10), %r15
nop
nop
nop
add $38747, %r15

// Load
lea addresses_US+0x1399d, %rax
and %r10, %r10
mov (%rax), %r13d
nop
nop
nop
xor $20429, %r13

// Faulty Load
mov $0xc7df9000000059d, %rcx
nop
nop
nop
xor %r8, %r8
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'6e': 2, '08': 3, '00': 19056, 'f6': 1, 'ff': 37, '49': 1330, '40': 1, '15': 1, '6c': 11, '46': 1386, '25': 1}
00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 49 49 49 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
