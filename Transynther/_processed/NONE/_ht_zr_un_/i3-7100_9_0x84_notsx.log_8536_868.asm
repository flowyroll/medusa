.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e2f7, %rcx
nop
nop
nop
nop
nop
add $55498, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rcx)
nop
add $9602, %r9
lea addresses_WC_ht+0x10cf7, %rbp
xor $5918, %r10
mov (%rbp), %r8d
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x121fb, %r10
nop
nop
nop
nop
nop
and $58787, %rcx
mov (%r10), %r8w
cmp %r9, %r9
lea addresses_D_ht+0x1d48f, %rbp
cmp $11421, %r10
mov (%rbp), %esi
nop
and %rcx, %rcx
lea addresses_WC_ht+0x140f7, %r11
nop
nop
nop
nop
cmp %r10, %r10
mov (%r11), %rsi
nop
nop
nop
nop
nop
add $55114, %r9
lea addresses_normal_ht+0xdcff, %rcx
nop
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x8d9b, %rsi
lea addresses_UC_ht+0x8ba7, %rdi
clflush (%rdi)
nop
nop
and $58036, %r8
mov $3, %rcx
rep movsq
nop
sub $45974, %rsi
lea addresses_UC_ht+0xe2f7, %rsi
lea addresses_WC_ht+0x1289f, %rdi
nop
nop
nop
nop
nop
add $17558, %rbp
mov $34, %rcx
rep movsq
nop
add $22475, %rdi
lea addresses_D_ht+0x15ff, %rsi
lea addresses_normal_ht+0x55f7, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $59, %rcx
rep movsw
and $31279, %r9
lea addresses_A_ht+0x16d77, %r11
nop
nop
nop
nop
nop
sub $39213, %r10
movb $0x61, (%r11)
nop
nop
nop
nop
nop
add $17693, %r8
lea addresses_UC_ht+0x10877, %rdi
nop
add $29411, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
inc %r8
lea addresses_A_ht+0xa557, %rsi
lea addresses_WC_ht+0x110f7, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $60047, %r9
mov $91, %rcx
rep movsb
add $16676, %r9
lea addresses_UC_ht+0x162f7, %r9
clflush (%r9)
inc %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0xdef7, %rsi
lea addresses_WT_ht+0x1cff7, %rdi
add %r10, %r10
mov $108, %rcx
rep movsb
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0xe2f7, %rbp
nop
nop
nop
nop
add $62082, %r12
movl $0x51525354, (%rbp)
nop
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_A+0x176f7, %r12
clflush (%r12)
nop
nop
inc %rax
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'ec': 1, 'ef': 1, 'ed': 1, 'e1': 1, 'c1': 2, 'f1': 1, '60': 16, 'f9': 2, 'eb': 1, 'e9': 1, '02': 971, '46': 6605, '00': 931, 'de': 1, 'c4': 1}
46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 02 46 00 46 46 00 46 02 46 00 02 46 46 02 46 02 46 46 02 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 46 00 46 46 46 46 02 46 46 02 02 46 46 46 46 46 46 02 00 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 00 02 46 46 46 46 00 46 02 46 46 00 46 46 46 46 46 46 46 02 46 46 46 46 00 46 46 46 02 00 46 46 46 46 46 00 46 46 46 02 46 46 46 00 46 46 46 46 46 46 02 46 46 46 00 02 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 02 46 02 46 46 46 46 46 46 02 46 46 00 46 46 46 00 46 46 46 46 46 02 46 02 46 00 46 46 02 46 46 02 00 46 46 46 46 46 46 00 02 46 46 00 46 46 46 02 46 46 46 46 46 46 46 46 46 00 46 46 02 46 46 46 46 00 46 02 46 00 46 00 46 02 46 02 46 46 46 46 46 46 00 46 46 46 02 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 02 46 46 46 46 46 02 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 02 46 46 46 46 46 00 46 46 00 02 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 46 00 46 46 46 46 46 02 00 46 46 46 46 46 46 02 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 02 46 02 46 46 02 46 46 00 46 00 46 02 02 46 46 46 46 46 02 46 00 02 46 46 46 46 46 46 46 46 46 02 46 46 46 46 02 ec 46 02 46 46 46 46 02 46 46 00 46 46 46 46 00 46 02 46 46 46 02 46 02 46 00 46 46 46 46 00 46 00 46 46 02 46 02 46 46 46 02 46 46 46 46 46 46 00 46 46 00 46 46 46 02 46 46 46 46 46 02 46 46 02 00 46 46 46 46 46 46 46 46 02 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 02 46 46 00 46 00 46 02 02 46 46 46 46 46 46 46 46 00 46 02 46 00 46 46 46 46 46 46 46 46 02 46 46 46 46 46 00 46 46 46 46 46 46 46 02 02 00 46 46 02 46 46 46 46 46 46 46 46 00 46 00 46 02 46 46 02 00 46 46 46 46 46 46 02 46 46 46 02 46 46 02 46 02 46 46 46 02 46 46 46 02 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 46 46 46 46 46 46 46 00 46 46 02 46 46 00 46 46 46 46 46 46 46 46 02 46 46 46 02 46 02 46 46 46 46 02 00 46 46 00 02 00 46 46 46 46 46 46 46 46 46 02 46 46 46 02 46 02 46 46 00 46 02 46 46 46 46 00 46 46 46 02 46 46 46 02 00 46 00 46 46 46 46 00 46 46 02 02 02 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 46 02 46 02 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 46 46 02 46 46 46 46 02 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 02 46 46 00 46 02 00 46 02 00 46 46 46 46 02 46 46 46 46 46 46 02 46 00 46 46 46 46 46 46 46 46 02 46 46 46 46 46 02 02 46 46 46 46 46 46 46 46 46 46 46 02 00 46 46 46 02 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 00 02 00 46 02 46 46 46 46 00 46 46 02 46 46 02 46 02 46 02 00 46 02 46 46 46 46 02 02 46 46 00 46 46 00 46 46 46 46 46 46 02 46 46 46 46 46 46 46 46 46 02 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 02 46 00 02 46 00 46 02 46 00 46 02 46 02 46 02 46 46 46 46 02 46 46 46 46 46 46 46
*/
