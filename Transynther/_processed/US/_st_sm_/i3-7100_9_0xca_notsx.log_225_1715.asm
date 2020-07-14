.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbx
push %rcx
lea addresses_normal_ht+0x3239, %r12
and %r10, %r10
movb (%r12), %cl
nop
nop
nop
nop
add $27980, %rbx
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x8069, %rsi
lea addresses_A+0x7659, %rdi
nop
nop
nop
sub $46195, %r11
mov $49, %rcx
rep movsb
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x785e2b00000006f9, %rsi
nop
nop
nop
nop
inc %rdi
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0xcb31, %rbx
nop
nop
and $38302, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
and %r13, %r13

// Store
lea addresses_US+0xfcf9, %r11
nop
nop
sub $32431, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
cmp $38166, %rsi

// Store
lea addresses_US+0x12629, %rsi
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovntdq %ymm7, (%rsi)
cmp $20842, %r13

// Store
lea addresses_US+0x1a39, %rdx
nop
nop
nop
inc %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_US+0x1a39, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%rsi), %edx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 225}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
