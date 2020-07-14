.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1685, %rsi
lea addresses_D_ht+0x18885, %rdi
nop
nop
nop
inc %rbp
mov $64, %rcx
rep movsb
nop
nop
inc %r15
lea addresses_D_ht+0x1c6de, %r8
nop
xor $28778, %rbp
mov (%r8), %r15
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x9705, %rsi
lea addresses_A_ht+0x1984d, %rdi
nop
nop
sub $63048, %r12
mov $92, %rcx
rep movsw
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x19085, %rcx
nop
cmp %rbp, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $6033, %r8
lea addresses_D_ht+0xa285, %rsi
nop
nop
nop
add $33745, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x11885, %r15
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
cmp $37913, %r8
lea addresses_WC_ht+0xe085, %r8
nop
nop
nop
nop
nop
sub $15749, %rcx
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
add %rcx, %rcx
lea addresses_D_ht+0xd92f, %r8
nop
nop
nop
nop
inc %r12
mov (%r8), %r15w
dec %rcx
lea addresses_normal_ht+0x19395, %rcx
nop
and %rbp, %rbp
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0x7b82190000000845, %r13
nop
nop
sub $23291, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
and %r10, %r10

// Load
lea addresses_RW+0x14e5, %rcx
nop
nop
nop
nop
and %r14, %r14
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
and $3812, %r13

// Store
lea addresses_US+0xa3e1, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
nop
and $31760, %rax

// Store
lea addresses_PSE+0x1ef25, %rax
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0x16885, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_D+0x16885, %rax
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rax), %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 34}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
