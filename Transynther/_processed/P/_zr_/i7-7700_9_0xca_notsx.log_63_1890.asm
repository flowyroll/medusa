.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x84b1, %rsi
nop
nop
nop
nop
nop
sub $24628, %r12
movb (%rsi), %r13b
nop
nop
nop
sub $61367, %rdi
lea addresses_UC_ht+0xbf31, %r9
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
sub $36149, %r12
lea addresses_UC_ht+0x663, %rdi
nop
nop
nop
nop
dec %rsi
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r13
add $44261, %r12
lea addresses_WC_ht+0x19871, %rsi
nop
nop
nop
nop
nop
and $50680, %rdx
movl $0x61626364, (%rsi)
nop
sub $11146, %rdi
lea addresses_WC_ht+0x1af31, %rdx
nop
nop
nop
nop
dec %r13
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r12
nop
sub $8626, %r12
lea addresses_D_ht+0x1cf31, %rsi
lea addresses_WT_ht+0x1d171, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $15, %rcx
rep movsb
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x1e5c7, %r13
nop
nop
nop
cmp $17888, %rcx
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
xor $57941, %r13
lea addresses_WT_ht+0xcf31, %r13
sub $64142, %rdx
movw $0x6162, (%r13)
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x8731, %r12
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r12), %r9w
nop
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1ec31, %r14
nop
cmp $15945, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
nop
add $54932, %rsi

// Faulty Load
mov $0xf31, %rdi
nop
nop
and %r14, %r14
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 63}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
