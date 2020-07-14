.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x15f06, %rsi
lea addresses_WT_ht+0x782e, %rdi
nop
nop
nop
nop
sub $31369, %r8
mov $7, %rcx
rep movsq
nop
sub %r11, %r11
lea addresses_UC_ht+0x165d0, %rbp
nop
nop
xor $49656, %r14
movb $0x61, (%rbp)
nop
add $13173, %r14
lea addresses_WT_ht+0x1a46, %rsi
lea addresses_D_ht+0x6906, %rdi
nop
add $11040, %rbx
mov $29, %rcx
rep movsl
add %rbp, %rbp
lea addresses_UC_ht+0x6706, %rsi
lea addresses_WC_ht+0x17980, %rdi
nop
nop
nop
nop
nop
and $47214, %r8
mov $6, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1bf86, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x120de, %rcx
nop
nop
and $17677, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0xb9b3, %rsi
nop
nop
nop
nop
cmp %r11, %r11
mov (%rsi), %r8
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x8df6, %rsi
lea addresses_WC_ht+0x746a, %rdi
clflush (%rdi)
nop
nop
inc %r8
mov $32, %rcx
rep movsq
nop
nop
xor $56496, %rbp
lea addresses_UC_ht+0x1b106, %r8
nop
nop
nop
nop
nop
cmp $22739, %rsi
movb (%r8), %cl
nop
nop
nop
nop
xor $39975, %r11
lea addresses_WC_ht+0x1f06, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r8, %r8
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
xor $58251, %rsi
lea addresses_UC_ht+0x1b906, %rsi
lea addresses_WC_ht+0xf852, %rdi
nop
nop
add $1275, %rbx
mov $127, %rcx
rep movsl
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x15d06, %rsi
lea addresses_UC_ht+0x1b906, %rdi
nop
nop
nop
nop
dec %rbp
mov $81, %rcx
rep movsq
inc %rbx
lea addresses_D_ht+0xeb06, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %rbx
movaps %xmm4, (%rbx)
nop
nop
nop
nop
nop
and $8185, %rbx
lea addresses_UC_ht+0x17b5a, %r8
nop
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx

// Faulty Load
lea addresses_WT+0x10906, %rbp
nop
nop
nop
nop
nop
inc %r9
movaps (%rbp), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'47': 1, '48': 8, 'eb': 1, '49': 378, 'cf': 1, '46': 6309, '00': 15128, '08': 2, '40': 1}
00 46 00 00 46 46 00 00 46 00 00 00 46 46 00 00 46 00 00 00 46 00 00 46 46 00 00 00 00 00 46 00 00 00 46 00 00 46 00 00 46 46 46 00 00 49 00 00 00 46 00 46 46 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 46 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 00 46 46 00 00 00 00 46 46 00 00 00 46 49 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 00 00 40 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 46 00 00 46 46 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 46 00 00 00 46 46 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 46 49 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 46 49 00 00 46 00 00 46 46 00 00 46 49 00 46 00 00 46 46 00 46 00 00 00 46 46 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 49 00 00 00 00 00 00 46 00 46 00 00 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 00 46 46 00 46 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 00 00 00 46 46 00 00 00 46 00 00 46 46 00 00 46 49 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 46 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 49 00 00 46 00 00 00 46 00 00 46 49 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 49 00 00 00 46 00 00 00 46 00 46 49 00 00 00 00 46 00 00 46 49 00 46 00 00 00 00 00 49 00 00 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 49 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 46 00 00 00 46 00 46 00 00 46 00 00 46 00 46 49 00 00 00 00 46 00 00 00 46 00 46 46 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 46 00 46 49 00 00 46 00 00 46 00 00 46 00 00 46 49 00 46 00 00 00 00 46 00 00 46 00 00 46 00 46 46 00 00 46 00 00 00 46 00 46 00 00 46 49 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 00 00 46 00 00 00 46 00 00 46 00 00 46 46 00 00 00 00 46 00 46 46 00 00 46 00 00 46 00 46 46 00 00 46 00 00 46 00 46 46 00 00 00 00 00 00 46 49 00 00 00 46 00 00 46 00 00 00 46 00 46 49 00 46 00 00 46 46 00 00 46 49 00
*/
