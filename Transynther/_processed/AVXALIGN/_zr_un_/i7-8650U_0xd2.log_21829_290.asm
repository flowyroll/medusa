.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb28d, %rsi
lea addresses_D_ht+0x1ce8d, %rdi
clflush (%rdi)
nop
nop
cmp $18812, %rax
mov $60, %rcx
rep movsq
xor $31128, %rsi
lea addresses_normal_ht+0x18403, %rsi
lea addresses_UC_ht+0x688d, %rdi
nop
nop
add %rax, %rax
mov $16, %rcx
rep movsw
nop
nop
inc %rbp
lea addresses_D_ht+0x1ca8d, %r9
clflush (%r9)
nop
nop
nop
inc %r13
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
add $61185, %rsi
lea addresses_D_ht+0x1aa5d, %rsi
lea addresses_normal_ht+0x1d41d, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $88, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xe28d, %rsi
lea addresses_UC_ht+0x33ed, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $12, %rcx
rep movsq
nop
nop
nop
cmp $63866, %rsi
lea addresses_WT_ht+0x928d, %r9
nop
xor $951, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1428d, %rsi
lea addresses_UC_ht+0x1cc5d, %rdi
and $34219, %r12
mov $111, %rcx
rep movsb
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x10e8d, %rsi
nop
nop
nop
inc %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
cmp $63882, %rax
lea addresses_UC_ht+0x1ca8d, %rcx
nop
sub $53434, %rax
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x168ed, %r13
nop
nop
nop
nop
cmp $19017, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1118d, %rbp
nop
nop
nop
nop
add $56911, %r12
mov (%rbp), %eax
nop
nop
nop
nop
nop
and $3734, %rax
lea addresses_A_ht+0xe71, %rdi
nop
nop
sub $16360, %rax
mov (%rdi), %r12w
sub %r13, %r13
lea addresses_A_ht+0x628d, %rsi
lea addresses_WT_ht+0x17035, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $94, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x196e8, %rdi
clflush (%rdi)
nop
nop
sub $36086, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rdi
movntdq %xmm6, (%rdi)
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0xa28d, %rcx
sub %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WC+0xf70d, %r12
nop
nop
xor %r14, %r14
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_D+0x1da8d, %rax
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
and $8747, %rbx

// Faulty Load
lea addresses_PSE+0x11a8d, %rdx
nop
nop
nop
xor $8806, %r10
vmovntdqa (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 300, '16': 21521, '11': 2, 'fc': 1, '0c': 1, '12': 1, '24': 2, '13': 1}
00 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 00 16 16 16 16
*/
