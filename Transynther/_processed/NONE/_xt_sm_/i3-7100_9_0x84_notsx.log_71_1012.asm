.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x196f2, %r15
and %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x55d2, %rsi
lea addresses_A_ht+0x1e0d2, %rdi
nop
nop
nop
nop
nop
xor $17256, %rbx
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
and $47288, %rcx
lea addresses_UC_ht+0x175d2, %rsi
lea addresses_WT_ht+0x551a, %rdi
nop
nop
add $25486, %rax
mov $106, %rcx
rep movsw
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rdi
push %rsi

// Store
mov $0xb12, %r15
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movntdq %xmm5, (%r15)
nop
nop
nop
add %r10, %r10

// Store
lea addresses_A+0x75d2, %rsi
nop
and $2821, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
add $19998, %r10

// Load
lea addresses_D+0x15dd2, %r14
clflush (%r14)
nop
dec %rsi
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_A+0x75d2, %rdi
nop
nop
nop
xor $15035, %rsi
mov (%rdi), %r11d
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'58': 71}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
