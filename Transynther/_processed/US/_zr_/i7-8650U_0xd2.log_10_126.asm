.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbx
push %rsi
lea addresses_WC_ht+0x11ca6, %rbx
dec %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
xor $52736, %r8
pop %rsi
pop %rbx
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %r9
push %rdx

// Store
lea addresses_normal+0xfcae, %r13
nop
nop
nop
nop
nop
sub $35407, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r13)
and %r13, %r13

// Store
lea addresses_RW+0xfee6, %r14
clflush (%r14)
nop
nop
nop
nop
sub $53492, %r10
movw $0x5152, (%r14)
nop
xor $25368, %r8

// Store
lea addresses_US+0x19f26, %r14
nop
nop
inc %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_A+0x1062e, %r9
nop
nop
nop
add $20862, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
and $63590, %r9

// Faulty Load
lea addresses_US+0x8ea6, %r11
cmp $40447, %r8
mov (%r11), %r13d
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
