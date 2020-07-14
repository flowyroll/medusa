.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4665, %rsi
lea addresses_A_ht+0x77e0, %rdi
clflush (%rdi)
nop
nop
add $30130, %rax
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $31812, %rdx
lea addresses_WC_ht+0xf220, %r14
dec %rbx
movb (%r14), %al
nop
dec %rcx
lea addresses_UC_ht+0x1ada0, %rax
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
nop
xor $40328, %rax
lea addresses_WC_ht+0x11fe0, %rsi
lea addresses_UC_ht+0x1db60, %rdi
nop
xor $24441, %r11
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xf890, %rdi
nop
nop
dec %rsi
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x155e0, %r11
nop
cmp $3117, %rdi
movb (%r11), %dl
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xcbe0, %rdx
nop
sub %rcx, %rcx
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0xbeb8, %rdi
and %r14, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
cmp $52617, %rdi
lea addresses_A_ht+0x1cfe0, %rsi
lea addresses_normal_ht+0x12180, %rdi
nop
lfence
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
and $23546, %rdi
lea addresses_WT_ht+0x12640, %rsi
lea addresses_UC_ht+0x11fe0, %rdi
add $59640, %rdx
mov $60, %rcx
rep movsq
nop
add %rax, %rax
lea addresses_UC_ht+0xfa80, %rsi
lea addresses_WT_ht+0x35c0, %rdi
sub %rax, %rax
mov $92, %rcx
rep movsl
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x193e0, %r14
nop
nop
nop
add $38991, %rbx
movw $0x6162, (%r14)
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x1e7e0, %rsi
lea addresses_A_ht+0x17fa0, %rdi
nop
nop
and %rax, %rax
mov $85, %rcx
rep movsq
nop
nop
xor $42626, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x7a54, %rsi
lea addresses_WT+0x10c20, %rdi
inc %r15
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi

// REPMOV
lea addresses_UC+0x198e0, %rsi
lea addresses_normal+0x1afe0, %rdi
nop
nop
mfence
mov $104, %rcx
rep movsl
nop
inc %r10

// Load
lea addresses_UC+0xa180, %rsi
xor %rdi, %rdi
movb (%rsi), %r15b
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_UC+0xc2e0, %rcx
nop
nop
nop
xor $35242, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rcx)
nop
inc %r10

// Store
lea addresses_D+0xde0, %r15
nop
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
dec %rdx

// Store
lea addresses_D+0x1a6a0, %r10
nop
nop
add $10270, %rsi
movb $0x51, (%r10)
nop
nop
nop
cmp $38112, %r12

// Faulty Load
lea addresses_RW+0x157e0, %r15
nop
nop
nop
nop
sub %r12, %r12
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
