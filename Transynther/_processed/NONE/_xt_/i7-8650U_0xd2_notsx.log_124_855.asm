.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbx
push %rdx
push %rsi
lea addresses_WC_ht+0xfffe, %r13
nop
nop
nop
nop
cmp $62111, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
and $5967, %r14
lea addresses_WC_ht+0x1a06d, %rsi
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rsi

// Store
lea addresses_D+0x8575, %r11
nop
dec %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r11)
nop
nop
sub %r13, %r13

// Store
lea addresses_A+0x18f75, %r11
clflush (%r11)
sub $61262, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r11)
nop
nop
xor %r12, %r12

// Store
mov $0x567090000000535, %rcx
nop
nop
sub $17484, %rsi
movb $0x51, (%rcx)
nop
nop
cmp $65097, %rsi

// Store
lea addresses_WT+0x5bb5, %r14
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0xe3b5, %r15
clflush (%r15)
nop
nop
and $28756, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r15)
nop
inc %rsi

// Store
lea addresses_D+0x1bc35, %r11
nop
nop
nop
nop
cmp $32751, %r12
movw $0x5152, (%r11)
nop
nop
nop
nop
add $56507, %r13

// Faulty Load
lea addresses_normal+0x1fbb5, %r14
nop
nop
nop
sub $26153, %rcx
mov (%r14), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'34': 124}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
