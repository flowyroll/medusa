.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rcx
lea addresses_A_ht+0xf9b8, %rcx
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rcx)
nop
xor $47154, %r15
pop %rcx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x49b8, %rcx
nop
nop
lfence
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovntdq %ymm4, (%rcx)
nop
nop
nop
nop
cmp $24447, %r11

// Store
lea addresses_WC+0xdb8, %r13
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%r13)
nop
nop
nop
cmp $50674, %rbx

// Store
mov $0x1769de0000000268, %r11
sub %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r11)
nop
and %rdi, %rdi

// Load
lea addresses_WC+0xdb8, %r13
nop
nop
nop
nop
sub $14428, %rdi
movb (%r13), %al
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_WC+0xdb8, %rax
nop
nop
nop
nop
sub $58995, %r14
movb (%rax), %bl
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'00': 1}
00
*/
