.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x944a, %rcx
sub %r15, %r15
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
add $22881, %rbx
lea addresses_D_ht+0x13b6c, %rsi
lea addresses_D_ht+0x1a872, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r13
mov $90, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_normal_ht+0x1004a, %rdi
add $60697, %r13
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %rcx
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdx

// Load
lea addresses_US+0x14cf2, %rcx
nop
nop
nop
and $27760, %rdx
movb (%rcx), %r9b
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_US+0x644a, %rdx
nop
sub $21531, %r8
movl $0x51525354, (%rdx)
nop
nop
cmp $58988, %r8

// Store
lea addresses_normal+0x1cf4e, %r15
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_US+0x1484a, %rcx
nop
nop
nop
and %r11, %r11
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 7}
00 00 00 00 00 00 00
*/
