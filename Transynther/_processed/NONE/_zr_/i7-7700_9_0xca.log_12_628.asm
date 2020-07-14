.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rdi
push %rdx
lea addresses_D_ht+0x18e61, %r8
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r8), %r12d
and $65332, %rdx
lea addresses_normal_ht+0x15941, %rdi
cmp $63171, %r11
movb $0x61, (%rdi)
nop
add $36693, %r12
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x102c9, %rdx
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
sub $13642, %r11

// Store
lea addresses_WC+0x841, %rsi
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rsi)
cmp %r11, %r11

// Store
lea addresses_D+0x41, %rdx
nop
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_WC+0x16041, %r11
nop
add %rsi, %rsi
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
