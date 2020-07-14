.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xafb3, %rcx
nop
nop
inc %r8
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x8fb3, %rsi
lea addresses_A_ht+0x7c0b, %rdi
clflush (%rsi)
clflush (%rdi)
cmp $61422, %rax
mov $40, %rcx
rep movsb
nop
nop
nop
xor $59255, %rcx
lea addresses_D_ht+0x2fb3, %r10
cmp %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r10)
and %r10, %r10
lea addresses_A_ht+0x19db3, %rdi
nop
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x167b3, %rsi
lea addresses_normal_ht+0xffb3, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
mov $50, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x4fd3, %rdx
nop
cmp $28273, %r10
movl $0x61626364, (%rdx)
nop
add $13058, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x117b3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
nop
lfence

// Store
lea addresses_PSE+0x3613, %r15
cmp %r8, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_WC+0x133b3, %r8
nop
and $63102, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
add $23215, %r15

// Load
lea addresses_UC+0x1bac5, %r8
nop
nop
dec %rbx
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r15
and $26242, %rsi

// Store
lea addresses_WC+0xcf33, %rdx
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
nop
add $25462, %r15

// REPMOV
lea addresses_A+0xb3b3, %rsi
lea addresses_normal+0x14e9b, %rdi
nop
add $55474, %rbx
mov $29, %rcx
rep movsl
xor $15213, %rdi

// Store
lea addresses_D+0x1db33, %rbx
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movntdq %xmm3, (%rbx)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
mov $0x45d58200000001d3, %rdx
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovntdq %ymm5, (%rdx)
and %rax, %rax

// Store
lea addresses_WT+0x19bb3, %r8
nop
nop
nop
nop
nop
and %rdx, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
add $9084, %r8

// Faulty Load
lea addresses_PSE+0x117b3, %rdx
dec %r15
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 35}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
