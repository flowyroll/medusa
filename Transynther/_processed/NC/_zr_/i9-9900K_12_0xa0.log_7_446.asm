.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rdi
push %rdx
lea addresses_WC_ht+0x8c73, %r11
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
and $48543, %r14
lea addresses_A_ht+0x1a413, %rdx
and $16934, %rbx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x7033, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
movb (%rdi), %dl
nop
nop
nop
nop
sub $61617, %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0x8eb3, %rax
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
cmp $2109, %rbp

// Load
mov $0x2ea5ae0000000533, %rax
nop
nop
nop
nop
sub $48634, %r8
mov (%rax), %r10w
nop
nop
nop
dec %r11

// Store
lea addresses_UC+0x1747b, %rbx
inc %rdx
movl $0x51525354, (%rbx)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0xfcb3, %r10
dec %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
xor $12053, %rax

// Load
lea addresses_PSE+0x5393, %r8
nop
nop
nop
sub $39610, %r10
mov (%r8), %r11
nop
nop
cmp $33340, %r11

// Store
lea addresses_D+0x394f, %r10
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movntdq %xmm1, (%r10)
nop
nop
add %rbp, %rbp

// Store
mov $0x9ff, %r8
nop
nop
nop
nop
nop
sub $45200, %rbp
movb $0x51, (%r8)
nop
nop
nop
nop
nop
and $26248, %rbp

// Faulty Load
mov $0x2ea5ae0000000533, %r10
clflush (%r10)
nop
nop
sub $12814, %rax
mov (%r10), %bp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 7}
00 00 00 00 00 00 00
*/
