.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e3aa, %r15
nop
nop
nop
nop
sub $54314, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
add $33285, %r13
lea addresses_D_ht+0x57b6, %rsi
nop
nop
nop
dec %rbp
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x1d824, %rbp
nop
nop
nop
nop
sub %r15, %r15
mov (%rbp), %r13
xor $23875, %r12
lea addresses_D_ht+0x776a, %rsi
lea addresses_WC_ht+0x18932, %rdi
add %rbp, %rbp
mov $13, %rcx
rep movsl
nop
add $15820, %rcx
lea addresses_UC_ht+0x15cea, %rsi
nop
nop
nop
nop
nop
xor $54988, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
mfence
lea addresses_UC_ht+0x118ea, %rsi
lea addresses_normal_ht+0x16bda, %rdi
nop
nop
nop
nop
nop
cmp $2498, %rdx
mov $17, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x1377a, %r9
nop
nop
nop
cmp $37685, %rbp
movw $0x6162, (%r9)
nop
nop
and $62958, %rbp
lea addresses_WT_ht+0x8e2a, %r13
nop
nop
dec %rdi
mov (%r13), %cx
nop
nop
xor $38419, %r12
lea addresses_A_ht+0xef2c, %rsi
lea addresses_UC_ht+0xefaf, %rdi
nop
add $48488, %r15
mov $2, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x16392, %rsi
lea addresses_WT_ht+0x1ee6a, %rdi
nop
nop
nop
add %rbp, %rbp
mov $32, %rcx
rep movsb
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1d80a, %rsi
nop
nop
nop
sub %rdi, %rdi
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1eee2, %rcx
nop
dec %r13
mov (%rcx), %r15
nop
nop
nop
nop
nop
cmp $38636, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
mov $0x7dcbb30000000f6a, %r15
clflush (%r15)
nop
nop
nop
add $43300, %r9
movw $0x5152, (%r15)
nop
sub %r15, %r15

// Faulty Load
mov $0x7dcbb30000000f6a, %r13
nop
nop
nop
nop
and $39932, %r14
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 3, '52': 10, '24': 3}
00 52 52 52 52 24 52 52 52 52 24 52 00 24 00 52
*/
