.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12492, %rsi
lea addresses_WC_ht+0x1d9da, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $92, %rcx
rep movsw
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x18112, %rbp
and $62813, %r9
movb $0x61, (%rbp)
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x35da, %rdi
and %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1ac8a, %rsi
lea addresses_WC_ht+0x176fa, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $22, %rcx
rep movsw
nop
nop
nop
sub $45848, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x169da, %r11
inc %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WT+0x11ada, %r9
nop
nop
nop
nop
nop
add $58992, %rdi
movb $0x51, (%r9)
inc %r12

// Store
lea addresses_normal+0xfd5a, %r9
nop
nop
nop
add $877, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
dec %rdx

// Load
mov $0x61c60d00000008d2, %rdx
nop
nop
nop
nop
nop
sub $59607, %rbx
mov (%rdx), %edi
nop
nop
nop
nop
nop
sub $35346, %rdx

// Faulty Load
lea addresses_PSE+0x41da, %r9
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%r9), %r11w
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'33': 17}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
