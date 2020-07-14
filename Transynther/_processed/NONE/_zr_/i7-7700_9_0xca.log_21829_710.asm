.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rdx
push %rsi
lea addresses_WC_ht+0x1480f, %r15
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r15), %r8d
nop
nop
nop
nop
nop
add $31499, %r11
lea addresses_UC_ht+0x1da0f, %r15
nop
nop
nop
nop
nop
sub $58134, %rax
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
and $39545, %r15
lea addresses_normal_ht+0x7f1f, %r11
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x15c37, %rax
nop
nop
add %rsi, %rsi
mov (%rax), %r8
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x12a0f, %r15
nop
nop
nop
nop
nop
xor $25454, %r11
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x7e0f, %rax
clflush (%rax)
sub $11534, %r8
movb (%rax), %r15b
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx

// Store
lea addresses_normal+0x120cf, %rbx
nop
nop
dec %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
sub $53602, %r10

// Faulty Load
lea addresses_WC+0xa80f, %r15
xor $700, %r12
movups (%r15), %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
