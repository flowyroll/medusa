.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe08c, %rax
nop
nop
cmp $49074, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %rax
vmovaps %ymm6, (%rax)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x708c, %rsi
lea addresses_normal_ht+0x1548c, %rdi
nop
nop
nop
nop
nop
and $9031, %r15
mov $89, %rcx
rep movsw
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x1e0dc, %r15
nop
nop
add $9063, %r14
mov (%r15), %bx
nop
xor $7958, %rdi
lea addresses_D_ht+0x7e08, %rsi
lea addresses_normal_ht+0x1d8c, %rdi
clflush (%rdi)
nop
nop
inc %r10
mov $56, %rcx
rep movsb
nop
nop
nop
inc %r15
lea addresses_D_ht+0x17f0c, %rsi
nop
nop
nop
nop
and %rdi, %rdi
mov (%rsi), %r10
nop
nop
and $56938, %r15
lea addresses_WC_ht+0x4c8c, %rsi
lea addresses_normal_ht+0xcc8c, %rdi
nop
nop
nop
nop
and $12453, %r15
mov $116, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x11c8c, %rsi
lea addresses_UC_ht+0x5c8c, %rdi
nop
and $36853, %r14
mov $93, %rcx
rep movsw
xor $50785, %rdi
lea addresses_WC_ht+0x4f2c, %r10
clflush (%r10)
nop
nop
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x12faa, %r14
inc %r10
mov (%r14), %r15
sub %r15, %r15
lea addresses_A_ht+0x17464, %rsi
xor $57367, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rsi)
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x108c, %r15
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1128c, %r14
nop
nop
nop
add %r10, %r10
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xe50c, %rsi
lea addresses_normal_ht+0x1508c, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $15, %rcx
rep movsw
dec %rcx
lea addresses_normal_ht+0xaa8c, %r14
add $32656, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x39ec, %rsi
lea addresses_WC_ht+0x19c0c, %rdi
clflush (%rsi)
nop
nop
nop
dec %r10
mov $78, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1608c, %rbx
nop
nop
nop
nop
inc %rdi
movb $0x51, (%rbx)
xor %r10, %r10

// Store
lea addresses_WC+0x1456c, %rbx
nop
nop
inc %r10
movw $0x5152, (%rbx)
nop
nop
nop
add $33659, %rsi

// Store
mov $0x3577b400000009c0, %rdi
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%rdi)
add $5465, %rbx

// Store
lea addresses_normal+0x708c, %r10
nop
and %rcx, %rcx
movw $0x5152, (%r10)
nop
nop
dec %rdx

// Store
lea addresses_WC+0x1ba6c, %r13
clflush (%r13)
nop
add $35202, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r13)
cmp %r10, %r10

// Store
lea addresses_UC+0x6dcc, %rdi
nop
nop
nop
nop
nop
xor $33390, %rbx
movb $0x51, (%rdi)
nop
nop
nop
nop
xor $60211, %r13

// Faulty Load
lea addresses_WC+0x1608c, %r10
nop
nop
and $50843, %rdi
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'b3': 1, '07': 1, 'ff': 1, '3b': 1, '00': 12703, '03': 2, '49': 7828, 'a7': 1, '4f': 1, '44': 1289, '1b': 1}
49 00 00 00 00 00 00 00 49 00 00 00 49 49 44 00 49 00 49 49 00 00 00 49 00 44 49 00 00 00 49 00 49 00 49 00 00 49 49 00 00 00 00 00 49 00 00 49 49 00 00 00 44 00 00 44 00 49 00 00 00 00 00 49 49 00 00 00 44 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 49 00 00 49 49 00 49 00 49 00 00 00 00 49 49 49 00 44 00 00 00 49 00 49 00 49 44 00 49 49 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 49 49 00 00 00 49 44 00 49 00 00 49 00 00 44 49 49 49 00 00 00 49 00 00 00 00 49 49 00 49 49 44 00 00 00 00 49 49 49 00 00 00 49 49 49 49 49 49 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 44 00 49 49 00 49 00 49 00 00 00 49 49 00 00 00 00 00 00 00 49 00 44 00 00 49 49 00 00 49 00 00 44 00 49 49 44 00 00 49 00 49 49 49 00 49 00 49 00 49 49 00 00 49 00 00 49 49 49 00 00 49 00 49 00 49 00 00 49 49 00 00 49 49 49 00 00 00 00 00 49 00 44 00 00 00 44 00 00 49 00 49 44 00 00 00 49 00 49 49 00 00 49 00 00 00 00 00 49 00 49 00 44 00 49 49 00 00 00 49 49 00 00 49 49 00 49 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 44 49 00 00 00 00 00 00 49 49 49 44 00 00 49 00 44 00 00 49 49 00 00 00 00 00 49 00 00 00 00 49 00 00 49 49 49 00 49 00 49 00 00 49 49 49 00 49 00 49 49 49 49 00 00 44 00 00 49 49 00 00 00 49 00 00 00 00 49 00 00 49 49 00 49 49 49 00 00 49 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 49 00 44 00 00 00 00 44 00 44 00 00 00 49 49 00 00 49 49 00 00 00 49 49 00 00 49 00 49 49 00 00 00 49 00 00 00 00 49 49 44 00 00 00 00 49 49 49 49 49 00 49 00 00 00 49 00 00 49 00 49 00 49 00 00 00 49 00 00 00 49 49 49 00 00 00 49 49 00 00 00 44 00 00 00 00 00 00 49 00 00 49 49 00 00 44 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 49 00 44 00 00 00 00 00 49 49 00 44 00 00 49 00 49 00 00 49 00 49 49 00 00 00 49 49 49 00 00 00 44 00 00 44 49 00 00 00 00 00 49 49 49 49 00 49 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 44 00 00 00 00 00 00 00 00 49 49 49 00 00 00 44 00 00 49 00 00 49 49 49 00 00 00 00 00 00 49 49 00 00 00 49 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 49 44 00 00 00 49 00 49 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 49 00 00 49 49 00 00 49 44 00 00 00 00 49 00 00 49 49 00 00 49 00 00 00 00 49 49 49 00 49 49 00 00 00 00 49 00 49 49 00 00 44 00 49 00 00 44 00 00 49 00 49 49 49 00 49 00 00 49 49 00 44 49 49 49 49 49 00 49 49 49 49 00 00 00 00 00 00 49 00 00 44 49 49 00 00 49 00 44 49 00 44 00 49 49 49 00 00 44 00 00 00 49 49 00 49 00 00 49 49 00 49 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 49 49 00 49 49 00 00 49 00 49 00 44 49 00 49 49 00 49 44 00 00 49 00 00 00 00 44 44 49 00 49 49 49 49 00 49 49 00 00 00 49 00 00 00 49 00 00 49 49 00 49 00 00 00 49 49 49 49 49 49 00 00 00 00 44 00 49 44 44 49 00 00 49 49 49 44 00 00 49 00 49 00 00 00 00 44 49 00 49 49 49 44 00 49 00 44 49 49 49 00 00 00 00 00 00 00 00 49 00 49 00 00 49 44
*/
