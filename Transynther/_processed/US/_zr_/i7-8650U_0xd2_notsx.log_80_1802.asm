.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x81f9, %rax
nop
nop
nop
xor $10348, %r12
movl $0x61626364, (%rax)
nop
nop
nop
nop
and $16970, %r15
lea addresses_WC_ht+0x5be4, %rax
nop
nop
nop
nop
nop
xor $58700, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rax)
sub $19467, %rax
lea addresses_normal_ht+0x59e9, %r12
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %r13w
nop
nop
nop
and $65336, %r12
lea addresses_UC_ht+0x18f79, %rsi
lea addresses_A_ht+0x13175, %rdi
clflush (%rsi)
nop
nop
sub $2292, %r12
mov $78, %rcx
rep movsb
and $40638, %rcx
lea addresses_A_ht+0x9469, %rsi
lea addresses_D_ht+0x30b9, %rdi
nop
nop
nop
nop
nop
xor $8256, %r13
mov $35, %rcx
rep movsw
nop
inc %r13
lea addresses_D_ht+0x1e439, %r14
nop
nop
nop
nop
nop
xor $20037, %rax
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x16379, %rsi
lea addresses_A_ht+0x12739, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
cmp %r14, %r14
mov $100, %rcx
rep movsl
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xa091, %rdi
nop
xor $18379, %r12
mov (%rdi), %ecx
nop
nop
nop
nop
and $20701, %rax
lea addresses_WC_ht+0x9539, %rsi
lea addresses_A_ht+0x1e719, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $35, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x14e39, %rsi
nop
nop
nop
nop
nop
sub $59620, %rax
mov (%rsi), %r13
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x3c19, %rax
nop
nop
nop
nop
nop
xor $51244, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
and $25007, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdx
push %rsi

// Load
mov $0xab9, %rbx
nop
nop
nop
nop
nop
xor $25849, %rbp
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
dec %rbx

// Faulty Load
lea addresses_US+0xd639, %rbx
nop
nop
nop
nop
add %r12, %r12
mov (%rbx), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 80}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
