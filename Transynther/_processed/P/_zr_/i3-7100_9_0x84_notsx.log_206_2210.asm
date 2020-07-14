.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1723c, %rdi
nop
nop
add $46866, %r13
movb (%rdi), %r11b
nop
nop
nop
nop
nop
cmp $54656, %r8
lea addresses_normal_ht+0x18c02, %rsi
lea addresses_WC_ht+0x1b63c, %rdi
nop
nop
cmp %rdx, %rdx
mov $63, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1887c, %r8
nop
nop
nop
cmp %r11, %r11
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
add %rcx, %rcx
lea addresses_D_ht+0x167c, %rcx
nop
sub $9217, %r11
movw $0x6162, (%rcx)
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x11fc, %rsi
lea addresses_D_ht+0xb87c, %rdi
clflush (%rsi)
xor %r8, %r8
mov $67, %rcx
rep movsl
sub %r11, %r11
lea addresses_A_ht+0x4c9c, %r13
nop
and %r11, %r11
movl $0x61626364, (%r13)
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x1d11c, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%r11), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rsi

// Faulty Load
mov $0x7c, %r11
nop
nop
nop
nop
add $27479, %rbp
mov (%r11), %si
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 206}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
