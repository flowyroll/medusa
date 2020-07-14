.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18606, %rsi
lea addresses_WT_ht+0xcf46, %rdi
nop
xor %rbx, %rbx
mov $2, %rcx
rep movsb
sub %r8, %r8
lea addresses_normal_ht+0x12746, %rsi
lea addresses_WC_ht+0xf78e, %rdi
nop
xor %rbp, %rbp
mov $19, %rcx
rep movsb
nop
nop
nop
nop
cmp $9174, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdx

// Store
lea addresses_normal+0xf46, %r11
nop
nop
nop
nop
nop
add %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
cmp $30904, %r13

// Store
mov $0x50fe220000000946, %r11
nop
inc %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovntdq %ymm3, (%r11)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_PSE+0xa346, %rcx
nop
and $30035, %rbp
movb $0x51, (%rcx)
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x1db46, %r13
nop
nop
nop
xor $28971, %r8
movw $0x5152, (%r13)
nop
nop
nop
and $2966, %r13

// Store
lea addresses_normal+0x5126, %rbp
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovntdq %ymm0, (%rbp)
nop
nop
xor $10562, %rcx

// Faulty Load
lea addresses_normal+0x1db46, %r8
nop
nop
nop
nop
nop
cmp $12280, %r12
mov (%r8), %bp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'52': 4}
52 52 52 52
*/
