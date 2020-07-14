.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x44cb, %r10
nop
nop
inc %r11
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
and $25357, %r11
lea addresses_D_ht+0x10403, %rsi
lea addresses_A_ht+0xf643, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $119, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $15144, %r12
lea addresses_normal_ht+0x4a43, %rsi
lea addresses_WT_ht+0x5643, %rdi
nop
nop
sub $28908, %r12
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $46246, %r11
lea addresses_WC_ht+0x13a43, %r12
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
xor $60108, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_A+0x1bf43, %rax
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%rax)
nop
xor $61063, %r10

// Store
lea addresses_D+0xe62f, %r10
nop
add $20979, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
dec %r9

// Store
lea addresses_RW+0x19f18, %r9
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
cmp $43990, %rax

// Store
lea addresses_PSE+0x14e43, %rax
nop
nop
nop
nop
cmp $56759, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rax)
and %r14, %r14

// Store
lea addresses_UC+0x25d3, %rcx
nop
xor $20639, %rax
movw $0x5152, (%rcx)
nop
nop
and $505, %rax

// Load
lea addresses_D+0x1cb0e, %r13
nop
nop
and $50914, %r10
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rcx
xor $28769, %r8

// Store
lea addresses_A+0x17cc3, %r13
sub $5948, %rax
movb $0x51, (%r13)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_PSE+0x14e43, %rcx
clflush (%rcx)
nop
inc %r14
vmovaps (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 581, '00': 227}
58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 00 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 00 00 00 58 58 00 00 58 58 58 58 00 58 00 00 00 58 58 00 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 00 58 00 00 58 58 00 58 00 58 58 58 58 58 58 58 00 00 58 58 00 00 58 00 58 58 00 00 58 58 00 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 00 58 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 58 00 00 00 00 58 58 00 58 00 58 58 58 58 58 00 58 00 00 58 00 58 00 58 00 00 58 00 00 58 58 58 00 58 00 58 58 00 58 00 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 00 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 00 00 58 58 58 00 58 58 00 00 58 58 58 58 58 00 00 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 58 58 00 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 00 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 00 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 00 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 00 58 00 58 58 58 58 00 58 00 58 58 58 00 00 00 58 58 58 00 58 58 00 58 00 00 00 58 58 00 58 00 58 58 58 58 00 00 58 58 58 58 58 00 58 00 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00
*/
