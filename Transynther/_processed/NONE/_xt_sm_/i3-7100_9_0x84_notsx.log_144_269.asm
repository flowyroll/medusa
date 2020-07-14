.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2d4, %rcx
nop
nop
nop
nop
nop
dec %rdi
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
xor $22839, %r15
lea addresses_A_ht+0x17d04, %r13
nop
inc %r9
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rbx
cmp %r9, %r9
lea addresses_D_ht+0x1e118, %rsi
lea addresses_WC_ht+0x33bc, %rdi
nop
nop
nop
and $28547, %r15
mov $19, %rcx
rep movsl
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x10d84, %rsi
lea addresses_normal_ht+0xf0c, %rdi
nop
dec %rbx
mov $119, %rcx
rep movsb
and %rcx, %rcx
lea addresses_A_ht+0x12914, %r9
clflush (%r9)
nop
nop
nop
dec %r11
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rbx
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
mov $0x5a669a00000003ce, %rsi
nop
nop
nop
nop
and $10920, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rsi)
nop
sub $60369, %rax

// Store
mov $0xb84, %r9
sub %rbp, %rbp
movw $0x5152, (%r9)
cmp %rsi, %rsi

// Store
lea addresses_US+0x103f4, %rax
nop
nop
xor $44889, %rbp
movb $0x51, (%rax)
nop
add %rdx, %rdx

// Store
lea addresses_D+0x1c8c4, %r9
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_D+0x1c8c4, %r9
clflush (%r9)
nop
nop
nop
add %r12, %r12
movb (%r9), %dl
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 144}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
