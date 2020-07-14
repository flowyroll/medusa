.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_UC+0x1f00f, %r9
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WT+0x1100f, %rdi
clflush (%rdi)
xor $58360, %r14
movb $0x51, (%rdi)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_PSE+0x9b0f, %rsi
nop
nop
nop
and $36415, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
sub $8152, %rdi

// Faulty Load
mov $0x1b4446000000000f, %r14
nop
nop
nop
nop
and $27005, %rdi
mov (%r14), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'51': 70, '00': 4}
51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
