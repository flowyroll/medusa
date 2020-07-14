.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb8b8, %rsi
lea addresses_D_ht+0xf46, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
cmp %r15, %r15
mov $115, %rcx
rep movsq
nop
nop
nop
cmp $43227, %rax
lea addresses_WT_ht+0x17458, %r10
clflush (%r10)
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
add $31624, %rax
lea addresses_D_ht+0x1c98, %r14
nop
nop
nop
add $4494, %r15
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
dec %rsi
lea addresses_D_ht+0x14e13, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov (%rdi), %r14w
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0xceb8, %rdi
clflush (%rdi)
inc %r9
movw $0x5152, (%rdi)
nop
and $52967, %r14

// Store
lea addresses_RW+0x1c98, %rcx
nop
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
and $24879, %rdi

// Load
lea addresses_WC+0x1bbf8, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_RW+0x1c98, %r10
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovaps %ymm2, (%r10)
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_RW+0x1c98, %rbp
nop
nop
nop
nop
cmp $47375, %rcx
mov (%rbp), %r11w
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 55}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
