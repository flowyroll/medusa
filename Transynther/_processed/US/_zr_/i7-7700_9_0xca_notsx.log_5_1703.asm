.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf04e, %rcx
clflush (%rcx)
add $47487, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xaf7e, %rax
nop
nop
nop
nop
add $6159, %rdx
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1db4a, %rsi
lea addresses_D_ht+0x870a, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $16, %rcx
rep movsb
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x793, %rsi
add $11903, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
sub $55794, %rbx
lea addresses_WC_ht+0x1265e, %rbx
nop
nop
inc %rax
movb $0x61, (%rbx)
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1dece, %rdx
nop
nop
sub $14615, %rcx
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
add $42387, %rbx
lea addresses_A_ht+0x704e, %r11
nop
nop
sub $58389, %rsi
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
cmp $40780, %rdi
lea addresses_A_ht+0x18ca6, %rax
nop
nop
nop
nop
xor $26910, %rbx
mov (%rax), %rsi
nop
nop
and $18749, %rax
lea addresses_UC_ht+0x1784e, %rsi
lea addresses_normal_ht+0x167ce, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $47399, %r11
mov $111, %rcx
rep movsq
nop
nop
nop
nop
xor $18268, %rbx
lea addresses_D_ht+0x1ec4e, %rax
nop
nop
nop
cmp $50284, %rdx
mov (%rax), %bx
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x705a, %rdi
nop
cmp $21073, %rbx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xac6e, %rsi
lea addresses_D_ht+0xa95e, %rdi
nop
inc %rdx
mov $110, %rcx
rep movsl
nop
inc %rdi
lea addresses_A_ht+0x89de, %rsi
nop
nop
nop
nop
sub $42114, %rax
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
xor $62749, %rax
lea addresses_normal_ht+0x17cfe, %rdx
nop
nop
nop
inc %rbx
movw $0x6162, (%rdx)
nop
and $24432, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0xb04e, %rax
nop
nop
inc %r11
mov (%rax), %si
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 5}
00 00 00 00 00
*/
