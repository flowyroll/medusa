.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x2cc3, %r15
clflush (%r15)
nop
cmp $14680, %r12
mov (%r15), %r11
nop
nop
xor $22905, %rsi
lea addresses_UC_ht+0x1ab9d, %r10
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%r10)
nop
nop
nop
sub $2150, %rdx
lea addresses_D_ht+0x1e74d, %rsi
lea addresses_WT_ht+0x54cd, %rdi
nop
inc %r10
mov $10, %rcx
rep movsw
add $46285, %r15
lea addresses_WC_ht+0x699d, %r15
nop
and %r12, %r12
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
xor $52755, %rdx
lea addresses_WC_ht+0x830d, %r15
nop
nop
nop
nop
nop
add $8280, %r11
mov (%r15), %si
nop
nop
add $58114, %rcx
lea addresses_normal_ht+0x18b9d, %rsi
lea addresses_A_ht+0x8d9d, %rdi
cmp %r15, %r15
mov $99, %rcx
rep movsw
nop
cmp $21700, %r15
lea addresses_D_ht+0xbfd, %rdx
cmp $32572, %r11
movl $0x61626364, (%rdx)
nop
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x1959d, %rax
nop
nop
nop
sub $13365, %r13
mov (%rax), %si
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 52}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
