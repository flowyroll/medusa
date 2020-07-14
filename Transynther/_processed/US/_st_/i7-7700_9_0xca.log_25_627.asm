.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdx
push %rsi
lea addresses_D_ht+0x765e, %rax
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xc9ae, %r12
nop
nop
nop
nop
add $5988, %rsi
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rbx
add $47019, %rax
lea addresses_D_ht+0x1ba6, %r14
nop
nop
nop
xor %rsi, %rsi
movb (%r14), %al
and %rax, %rax
lea addresses_A_ht+0x1864c, %r14
nop
nop
add %r12, %r12
mov (%r14), %eax
nop
nop
xor $35755, %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r8
push %rsi

// Store
lea addresses_A+0x1a955, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $22458, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovaps %ymm3, (%rsi)
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0x31ae, %r8
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%r8)
nop
nop
xor $28752, %rsi

// Faulty Load
lea addresses_US+0x171ae, %r11
nop
nop
nop
dec %rsi
mov (%r11), %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'51': 25}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
