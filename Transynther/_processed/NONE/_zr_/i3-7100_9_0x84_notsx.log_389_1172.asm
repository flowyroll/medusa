.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rcx
push %rdx
push %rsi
lea addresses_UC_ht+0xd881, %rsi
nop
nop
nop
nop
add $277, %rcx
movw $0x6162, (%rsi)
nop
sub $26192, %rdx
lea addresses_normal_ht+0x1c618, %rsi
nop
add %r11, %r11
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xfc3f, %rsi
mov $0x41, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $16731, %rax
mov $4, %rcx
rep movsl
nop
nop
nop
and %rax, %rax

// Store
lea addresses_UC+0x1f7c1, %rcx
nop
nop
nop
nop
nop
sub $26143, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movaps %xmm5, (%rcx)
nop
nop
nop
nop
nop
and $32991, %rsi

// Store
lea addresses_WT+0x2fc1, %rsi
nop
nop
nop
nop
xor $57570, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
add $16338, %rdi

// Load
lea addresses_WC+0xc61, %r12
nop
xor $13915, %rsi
movb (%r12), %cl
nop
nop
nop
nop
nop
cmp $34304, %rax

// Store
lea addresses_WC+0x2641, %rbp
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
nop
nop
add $25263, %rsi

// Faulty Load
lea addresses_A+0x27c1, %r12
nop
nop
nop
nop
xor %rdi, %rdi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 389}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
