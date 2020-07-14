.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x159ca, %rsi
lea addresses_UC_ht+0x1b95, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $90, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_A_ht+0x7c91, %rsi
lea addresses_normal_ht+0x9b58, %rdi
nop
sub $10958, %rdx
mov $23, %rcx
rep movsq
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1ae42, %rsi
lea addresses_D_ht+0x22a, %rdi
nop
nop
nop
nop
nop
cmp $27542, %r11
mov $69, %rcx
rep movsb
nop
dec %rdx
lea addresses_WT_ht+0x934a, %r12
nop
nop
nop
nop
nop
and $9424, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r12)
nop
nop
and $33345, %rdi
lea addresses_WT_ht+0x1c64a, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
add $41544, %r10
lea addresses_normal_ht+0x2f2a, %rsi
lea addresses_D_ht+0x1872a, %rdi
nop
inc %r13
mov $17, %rcx
rep movsl
xor $17972, %rcx
lea addresses_D_ht+0x1e94a, %rsi
lea addresses_D_ht+0x1ee98, %rdi
add $1900, %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xcf4a, %r10
nop
nop
nop
nop
xor $8881, %rcx
mov (%r10), %r11w
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x94a, %rcx
sub %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rcx)
nop
sub %r12, %r12
lea addresses_D_ht+0x7f56, %rdi
add $64012, %r13
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
add $11487, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_UC+0x594a, %r8
nop
nop
nop
nop
dec %rax
movw $0x5152, (%r8)
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_UC+0x4dd4, %r10
nop
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0xf36a, %r10
nop
xor $52034, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_US+0x994a, %r10
nop
nop
and %rsi, %rsi
mov (%r10), %cx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'52': 41}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
